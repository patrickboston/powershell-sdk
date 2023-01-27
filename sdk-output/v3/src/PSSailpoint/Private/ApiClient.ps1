#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

function Invoke-ApiClient {
    [OutputType('System.Collections.Hashtable')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [string]$Uri,
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [string[]]$Accepts,
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [string[]]$ContentTypes,
        [Parameter(Mandatory)]
        [hashtable]$HeaderParameters,
        [Parameter(Mandatory)]
        [hashtable]$FormParameters,
        [Parameter(Mandatory)]
        [hashtable]$QueryParameters,
        [Parameter(Mandatory)]
        [hashtable]$CookieParameters,
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$Body,
        [Parameter(Mandatory)]
        [string]$Method,
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$ReturnType,
        [Parameter(Mandatory)]
        [bool]$IsBodyNullable
    )

    'Calling method: Invoke-ApiClient' | Write-Debug
    $PSBoundParameters | Out-DebugParameter | Write-Debug

    $Configuration = Get-DefaultConfiguration
    $RequestUri = $Configuration["BaseUrl"] + "v3" + $Uri
    $SkipCertificateCheck = $Configuration["SkipCertificateCheck"]

    Write-Debug "Calling Endpoint: $RequestUri"
    
    # cookie parameters
    foreach ($Parameter in $CookieParameters.GetEnumerator()) {
        if ($Parameter.Name -eq "cookieAuth") {
            $HeaderParameters["Cookie"] = $Parameter.Value
        } else {
            $HeaderParameters[$Parameter.Name] = $Parameter.Value
        }
    }
    if ($CookieParameters -and $CookieParameters.Count -gt 1) {
        Write-Warning "Multiple cookie parameters found. Currently only the first one is supported/used"
    }

    # accept, content-type headers
    $Accept = SelectHeaders -Headers $Accepts
    if ($Accept) {
        $HeaderParameters['Accept'] = $Accept
    }

    if("" -eq $Configuration["Token"] -and $null -ne $Configuration["TokenUrl"] -and $null -ne $Configuration["ClientId"] -and $null -ne $Configuration["ClientSecret"]) {
        $Result = GetAccessToken -TokenUrl $Configuration["TokenUrl"] -ClientId $Configuration["ClientId"] -ClientSecret $Configuration["ClientSecret"]
        
        if ($Result.statuscode -eq '200') {
            $Data = ConvertFrom-Json $Result.Content
            $Token = $Data.access_token
            Set-DefaultConfiguration -Token $Token
            $HeaderParameters['Authorization'] = "Bearer $Token"
        }
    } else {
        if ($null -eq $Configuration["ClientId"] -and $null -eq $Configuration["ClientSecret"] -and $null -eq $Configuration["TokenUrl"]) {
            Write-Host "ClientId, ClientSecret or TokenUrl Missing. Please provide values in the environment or in ~/.sailpoint/config.yaml" -ForegroundColor Red
        } else {
            $Token = $Configuration["Token"]
            $HeaderParameters['Authorization'] = "Bearer $Token"
        }
    }

    # Add Custom Header
    $HeaderParameters['X-SailPoint-SDK'] = "Powershell-0.0.1"

    [string]$MultiPartBoundary = $null
    $ContentType= SelectHeaders -Headers $ContentTypes
    if ($ContentType) {
        $HeaderParameters['Content-Type'] = $ContentType
        if ($ContentType -eq 'multipart/form-data') {
            [string]$MultiPartBoundary = [System.Guid]::NewGuid()
            $MultiPartBoundary = "---------------------------$MultiPartBoundary"
            $HeaderParameters['Content-Type'] = "$ContentType; boundary=$MultiPartBoundary"
        }
    }

    # add default headers if any
    foreach ($header in $Configuration["DefaultHeaders"].GetEnumerator()) {
        $HeaderParameters[$header.Name] = $header.Value
    }

    # construct URL query string
    $HttpValues = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)
    foreach ($Parameter in $QueryParameters.GetEnumerator()) {
        if ($Parameter.Value.Count -gt 1) { // array
            foreach ($Value in $Parameter.Value) {
                $HttpValues.Add($Parameter.Key + '[]', $Value)
            }
        } else {
            $HttpValues.Add($Parameter.Key,$Parameter.Value)
        }
    }
    # Build the request and load it with the query string.
    $UriBuilder = [System.UriBuilder]($RequestUri)
    $UriBuilder.Query = $HttpValues.ToString()

    # include form parameters in the request body
    if ($FormParameters -and $FormParameters.Count -gt 0) {
        if (![string]::IsNullOrEmpty($MultiPartBoundary)) {
            $RequestBody = ""
            $LF = "`r`n"
            $FormParameters.Keys | ForEach-Object {
                $value = $FormParameters[$_]
                $isFile = $value.GetType().FullName -eq "System.IO.FileInfo"

                $RequestBody += "--$MultiPartBoundary$LF"
                $RequestBody += "Content-Disposition: form-data; name=`"$_`""
                if ($isFile) {
                    $fileName = $value.Name
                    $RequestBody += "; filename=`"$fileName`"$LF"
                    $RequestBody += "Content-Type: application/octet-stream$LF$LF"
                    $RequestBody += Get-Content -Path $value.FullName
                } else {
                    $RequestBody += "$LF$LF"
                    $RequestBody += ([string]$value)
                }
                $RequestBody += "$LF--$MultiPartBoundary"
            }
            $RequestBody += "--"
        } else {
            $RequestBody = $FormParameters
        }
    }



    if ($Body -or $IsBodyNullable) {
        $RequestBody = $Body
        if ([string]::IsNullOrEmpty($RequestBody) -and $IsBodyNullable -eq $true) {
            $RequestBody = "null"
        }
    }

    if ($SkipCertificateCheck -eq $true) {
        if ($null -eq $Configuration["Proxy"]) {
            # skip certification check, no proxy
            $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                      -Method $Method `
                                      -Headers $HeaderParameters `
                                      -Body $RequestBody `
                                      -ErrorAction Stop `
                                      -UseBasicParsing `
                                      -SkipCertificateCheck
        } else {
            # skip certification check, use proxy
            $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                      -Method $Method `
                                      -Headers $HeaderParameters `
                                      -Body $RequestBody `
                                      -ErrorAction Stop `
                                      -UseBasicParsing `
                                      -SkipCertificateCheck `
                                      -Proxy $Configuration["Proxy"].GetProxy($UriBuilder.Uri) `
                                      -ProxyUseDefaultCredentials
        }
    } else {
        if ($null -eq $Configuration["Proxy"]) {
            # perform certification check, no proxy
            $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                      -Method $Method `
                                      -Headers $HeaderParameters `
                                      -Body $RequestBody `
                                      -ErrorAction Stop `
                                      -UseBasicParsing
        } else {
            # perform certification check, use proxy
            $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                      -Method $Method `
                                      -Headers $HeaderParameters `
                                      -Body $RequestBody `
                                      -ErrorAction Stop `
                                      -UseBasicParsing `
                                      -Proxy $Configuration["Proxy"].GetProxy($UriBuilder.Uri) `
                                      -ProxyUseDefaultCredentials
        }
    }

    return @{
        Response = DeserializeResponse -Response $Response -ReturnType $ReturnType -ContentTypes $Response.Headers["Content-Type"]
        StatusCode = $Response.StatusCode
        Headers = $Response.Headers
    }
}

# Select JSON MIME if present, otherwise choose the first one if available
function SelectHeaders {
    Param(
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [String[]]$Headers
    )

    foreach ($Header in $Headers) {
        if (IsJsonMIME -MIME $Header) {
            return $Header
        }
    }

    if (!($Headers) -or $Headers.Count -eq 0) {
        return $null
    } else {
        return $Headers[0] # return the first one
    }
}

function IsJsonMIME {
    Param(
        [Parameter(Mandatory)]
        [string]$MIME
    )

    if ($MIME -match "(?i)^(application/json|[^;/ \t]+/[^;/ \t]+[+]json)[ \t]*(;.*)?$") {
        return $true
    } else {
        return $false
    }
}

function GetAccessToken {
    Param(
        [Parameter(Mandatory)]
        [string]$TokenUrl,
        [Parameter(Mandatory)]
        [string]$ClientId,
        [Parameter(Mandatory)]
        [string]$ClientSecret
    )

    Write-Debug "Getting Access Token"
    Write-Debug $TokenUrl
    Write-Debug $ClientId
    Write-Debug $ClientSecret

    $HttpValues = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)
    $HttpValues.Add("grant_type","client_credentials")
    $HttpValues.Add("client_id", $ClientId)
    $HttpValues.Add("client_secret",$ClientSecret)

    # Build the request and load it with the query string.
    $UriBuilder = [System.UriBuilder]($TokenUrl)
    $UriBuilder.Query = $HttpValues.ToString()

    Write-Debug $UriBuilder.Uri

    try {
        $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                      -Method "POST" `
                                      -ErrorAction Stop `
                                      -UseBasicParsing                
        return $Response
    } catch {
        Write-Debug ("Exception occurred when calling Invoke-WebRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
        Write-Debug ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}

function DeserializeResponse {
    Param(
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$ReturnType,
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$Response,
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [string[]]$ContentTypes
    )

    If ($null -eq $ContentTypes) {
        $ContentTypes = [string[]]@()
    }

    If ([string]::IsNullOrEmpty($ReturnType) -and $ContentTypes.Count -eq 0) { # void response
        return $Response
    } Elseif ($ReturnType -match '\[\]$') { # array
        return ConvertFrom-Json $Response
    } Elseif (@("String", "Boolean", "System.DateTime") -contains $ReturnType) { # string, boolean ,datetime
        return $Response
    } Else { # others (e.g. model, file)
        if ($ContentTypes) {
            $ContentType = $null
            if ($ContentTypes.Count -gt 1) {
                $ContentType = SelectHeaders -Headers $ContentTypes
            } else {
                $ContentType = $ContentTypes[0]
            }

            if (IsJsonMIME -MIME $ContentType) { # JSON
                return ConvertFrom-Json $Response
            } else { # XML, file, etc
                return $Response
            }
        } else { # no content type in response header, returning raw response
            return $Response
        }
    }
}
