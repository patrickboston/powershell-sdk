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
ID of the work item
.PARAMETER RequesterId
ID of the requester
.PARAMETER RequesterDisplayName
The displayname of the requester
.PARAMETER OwnerId
The ID of the owner
.PARAMETER OwnerName
The name of the owner
.PARAMETER Created
Time when the work item was created
.PARAMETER Modified
Time when the work item was last updated
.PARAMETER Description
The description of the work item
.PARAMETER State
No description available.
.PARAMETER Type
No description available.
.PARAMETER RemediationItems
No description available.
.PARAMETER ApprovalItems
No description available.
.PARAMETER Name
The work item name
.PARAMETER Completed
The time at which the work item completed
.PARAMETER NumItems
The number of items in the work item
.PARAMETER Form
No description available.
.PARAMETER Errors
An array of errors that ocurred during the work item
.OUTPUTS

WorkItems<PSCustomObject>
#>

function Initialize-WorkItems {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterDisplayName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FINISHED", "REJECTED", "RETURNED", "EXPIRED", "PENDING", "CANCELED")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UNKNOWN", "GENERIC", "CERTIFICATION", "REMEDIATION", "DELEGATION", "APPROVAL", "VIOLATIONREVIEW", "FORM", "POLICYVIOLATION", "CHALLENGE", "IMPACTANALYSIS", "SIGNOFF", "EVENT", "MANUALACTION", "TEST")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RemediationItems},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApprovalItems},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Completed},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumItems},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Form},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => WorkItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requesterId" = ${RequesterId}
            "requesterDisplayName" = ${RequesterDisplayName}
            "ownerId" = ${OwnerId}
            "ownerName" = ${OwnerName}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "state" = ${State}
            "type" = ${Type}
            "remediationItems" = ${RemediationItems}
            "approvalItems" = ${ApprovalItems}
            "name" = ${Name}
            "completed" = ${Completed}
            "numItems" = ${NumItems}
            "form" = ${Form}
            "errors" = ${Errors}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkItems<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkItems<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkItems<PSCustomObject>
#>
function ConvertFrom-JsonToWorkItems {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => WorkItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkItems
        $AllProperties = ("id", "requesterId", "requesterDisplayName", "ownerId", "ownerName", "created", "modified", "description", "state", "type", "remediationItems", "approvalItems", "name", "completed", "numItems", "form", "errors")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterId"))) { #optional property not found
            $RequesterId = $null
        } else {
            $RequesterId = $JsonParameters.PSobject.Properties["requesterId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterDisplayName"))) { #optional property not found
            $RequesterDisplayName = $null
        } else {
            $RequesterDisplayName = $JsonParameters.PSobject.Properties["requesterDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["ownerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerName"))) { #optional property not found
            $OwnerName = $null
        } else {
            $OwnerName = $JsonParameters.PSobject.Properties["ownerName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "remediationItems"))) { #optional property not found
            $RemediationItems = $null
        } else {
            $RemediationItems = $JsonParameters.PSobject.Properties["remediationItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalItems"))) { #optional property not found
            $ApprovalItems = $null
        } else {
            $ApprovalItems = $JsonParameters.PSobject.Properties["approvalItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numItems"))) { #optional property not found
            $NumItems = $null
        } else {
            $NumItems = $JsonParameters.PSobject.Properties["numItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "form"))) { #optional property not found
            $Form = $null
        } else {
            $Form = $JsonParameters.PSobject.Properties["form"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requesterId" = ${RequesterId}
            "requesterDisplayName" = ${RequesterDisplayName}
            "ownerId" = ${OwnerId}
            "ownerName" = ${OwnerName}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "state" = ${State}
            "type" = ${Type}
            "remediationItems" = ${RemediationItems}
            "approvalItems" = ${ApprovalItems}
            "name" = ${Name}
            "completed" = ${Completed}
            "numItems" = ${NumItems}
            "form" = ${Form}
            "errors" = ${Errors}
        }

        return $PSO
    }

}

