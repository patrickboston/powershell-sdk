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

.PARAMETER OldApproverName
Display name of approver from whom the approval was forwarded.
.PARAMETER NewApproverName
Display name of approver to whom the approval was forwarded.
.PARAMETER Comment
Comment made while forwarding.
.PARAMETER Modified
Time at which approval was forwarded.
.PARAMETER ForwarderName
Display name of forwarder who forwarded the approval.
.PARAMETER ReassignmentType
No description available.
.OUTPUTS

ApprovalForwardHistory<PSCustomObject>
#>

function Initialize-ApprovalForwardHistory {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OldApproverName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NewApproverName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ForwarderName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANUAL_REASSIGNMENT", "AUTOMATIC_REASSIGNMENT", "AUTO_ESCALATION", "SELF_REVIEW_DELEGATION")]
        [PSCustomObject]
        ${ReassignmentType}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ApprovalForwardHistory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "oldApproverName" = ${OldApproverName}
            "newApproverName" = ${NewApproverName}
            "comment" = ${Comment}
            "modified" = ${Modified}
            "forwarderName" = ${ForwarderName}
            "reassignmentType" = ${ReassignmentType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalForwardHistory<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalForwardHistory<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalForwardHistory<PSCustomObject>
#>
function ConvertFrom-JsonToApprovalForwardHistory {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ApprovalForwardHistory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ApprovalForwardHistory
        $AllProperties = ("oldApproverName", "newApproverName", "comment", "modified", "forwarderName", "reassignmentType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "oldApproverName"))) { #optional property not found
            $OldApproverName = $null
        } else {
            $OldApproverName = $JsonParameters.PSobject.Properties["oldApproverName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "newApproverName"))) { #optional property not found
            $NewApproverName = $null
        } else {
            $NewApproverName = $JsonParameters.PSobject.Properties["newApproverName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forwarderName"))) { #optional property not found
            $ForwarderName = $null
        } else {
            $ForwarderName = $JsonParameters.PSobject.Properties["forwarderName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignmentType"))) { #optional property not found
            $ReassignmentType = $null
        } else {
            $ReassignmentType = $JsonParameters.PSobject.Properties["reassignmentType"].value
        }

        $PSO = [PSCustomObject]@{
            "oldApproverName" = ${OldApproverName}
            "newApproverName" = ${NewApproverName}
            "comment" = ${Comment}
            "modified" = ${Modified}
            "forwarderName" = ${ForwarderName}
            "reassignmentType" = ${ReassignmentType}
        }

        return $PSO
    }

}

