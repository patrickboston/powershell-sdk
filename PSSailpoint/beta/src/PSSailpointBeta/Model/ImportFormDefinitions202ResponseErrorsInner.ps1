#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Detail
No description available.
.PARAMETER Key
No description available.
.PARAMETER Text
No description available.
.OUTPUTS

ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>
#>

function Initialize-BetaImportFormDefinitions202ResponseErrorsInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Detail},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaImportFormDefinitions202ResponseErrorsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "detail" = ${Detail}
            "key" = ${Key}
            "text" = ${Text}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToImportFormDefinitions202ResponseErrorsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaImportFormDefinitions202ResponseErrorsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaImportFormDefinitions202ResponseErrorsInner
        $AllProperties = ("detail", "key", "text")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detail"))) { #optional property not found
            $Detail = $null
        } else {
            $Detail = $JsonParameters.PSobject.Properties["detail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "detail" = ${Detail}
            "key" = ${Key}
            "text" = ${Text}
        }

        return $PSO
    }

}

