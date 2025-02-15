#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Tagged object.

.PARAMETER ObjectRef
No description available.
.PARAMETER Tags
Labels to be applied to an Object
.OUTPUTS

TaggedObject<PSCustomObject>
#>

function Initialize-TaggedObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ObjectRef},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => TaggedObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "objectRef" = ${ObjectRef}
            "tags" = ${Tags}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TaggedObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to TaggedObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TaggedObject<PSCustomObject>
#>
function ConvertFrom-JsonToTaggedObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => TaggedObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TaggedObject
        $AllProperties = ("objectRef", "tags")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectRef"))) { #optional property not found
            $ObjectRef = $null
        } else {
            $ObjectRef = $JsonParameters.PSobject.Properties["objectRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        $PSO = [PSCustomObject]@{
            "objectRef" = ${ObjectRef}
            "tags" = ${Tags}
        }

        return $PSO
    }

}

