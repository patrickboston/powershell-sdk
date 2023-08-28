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

.PARAMETER AutoCompleteAction
Determines whether to auto-approve(APPROVE) or auto-revoke(REVOKE) upon campaign completion.
.OUTPUTS

CampaignCompleteOptions<PSCustomObject>
#>

function Initialize-CampaignCompleteOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVE", "REVOKE")]
        [String]
        ${AutoCompleteAction} = "APPROVE"
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CampaignCompleteOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "autoCompleteAction" = ${AutoCompleteAction}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignCompleteOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignCompleteOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignCompleteOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCampaignCompleteOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CampaignCompleteOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CampaignCompleteOptions
        $AllProperties = ("autoCompleteAction")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoCompleteAction"))) { #optional property not found
            $AutoCompleteAction = $null
        } else {
            $AutoCompleteAction = $JsonParameters.PSobject.Properties["autoCompleteAction"].value
        }

        $PSO = [PSCustomObject]@{
            "autoCompleteAction" = ${AutoCompleteAction}
        }

        return $PSO
    }

}

