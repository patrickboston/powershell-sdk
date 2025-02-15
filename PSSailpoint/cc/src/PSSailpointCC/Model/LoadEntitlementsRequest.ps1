#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER File
No description available.
.OUTPUTS

LoadEntitlementsRequest<PSCustomObject>
#>

function Initialize-CCLoadEntitlementsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File}
    )

    Process {
        'Creating PSCustomObject: PSSailpointCC => CCLoadEntitlementsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadEntitlementsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadEntitlementsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadEntitlementsRequest<PSCustomObject>
#>
function ConvertFrom-CCJsonToLoadEntitlementsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointCC => CCLoadEntitlementsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CCLoadEntitlementsRequest
        $AllProperties = ("file")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }

        return $PSO
    }

}

