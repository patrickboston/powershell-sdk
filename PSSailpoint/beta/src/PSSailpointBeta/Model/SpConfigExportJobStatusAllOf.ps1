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

.PARAMETER Completed
The time the job was completed.
.OUTPUTS

SpConfigExportJobStatusAllOf<PSCustomObject>
#>

function Initialize-BetaSpConfigExportJobStatusAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Completed}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSpConfigExportJobStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Completed) {
            throw "invalid value for 'Completed', 'Completed' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "completed" = ${Completed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpConfigExportJobStatusAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpConfigExportJobStatusAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpConfigExportJobStatusAllOf<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSpConfigExportJobStatusAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSpConfigExportJobStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSpConfigExportJobStatusAllOf
        $AllProperties = ("completed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'completed' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed' missing."
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        $PSO = [PSCustomObject]@{
            "completed" = ${Completed}
        }

        return $PSO
    }

}

