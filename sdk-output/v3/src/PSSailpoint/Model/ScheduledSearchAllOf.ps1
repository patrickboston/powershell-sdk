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

No description available.

.PARAMETER Id
The scheduled search ID.
.PARAMETER Owner
No description available.
.PARAMETER OwnerId
The ID of the scheduled search owner.  Please use the `id` in the `owner` object instead. 
.OUTPUTS

ScheduledSearchAllOf<PSCustomObject>
#>

function Initialize-ScheduledSearchAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ScheduledSearchAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "owner" = ${Owner}
            "ownerId" = ${OwnerId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScheduledSearchAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScheduledSearchAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScheduledSearchAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToScheduledSearchAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ScheduledSearchAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScheduledSearchAllOf
        $AllProperties = ("id", "owner", "ownerId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["ownerId"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "owner" = ${Owner}
            "ownerId" = ${OwnerId}
        }

        return $PSO
    }

}

