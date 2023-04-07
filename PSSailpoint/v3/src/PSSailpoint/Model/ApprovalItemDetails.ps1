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
ID of the approval item
.PARAMETER Account
The account referenced by the approval item
.PARAMETER Application
The name the application/source
.PARAMETER AttributeName
The name of the attribute
.PARAMETER AttributeOperation
The operation of the attribute
.PARAMETER AttributeValue
The value of the attribute
.PARAMETER State
No description available.
.OUTPUTS

ApprovalItemDetails<PSCustomObject>
#>

function Initialize-ApprovalItemDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Account},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Application},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeOperation},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeValue},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FINISHED", "REJECTED", "RETURNED", "EXPIRED", "PENDING", "CANCELED")]
        [PSCustomObject]
        ${State}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ApprovalItemDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "account" = ${Account}
            "application" = ${Application}
            "attributeName" = ${AttributeName}
            "attributeOperation" = ${AttributeOperation}
            "attributeValue" = ${AttributeValue}
            "state" = ${State}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalItemDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalItemDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalItemDetails<PSCustomObject>
#>
function ConvertFrom-JsonToApprovalItemDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ApprovalItemDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ApprovalItemDetails
        $AllProperties = ("id", "account", "application", "attributeName", "attributeOperation", "attributeValue", "state")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "application"))) { #optional property not found
            $Application = $null
        } else {
            $Application = $JsonParameters.PSobject.Properties["application"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) { #optional property not found
            $AttributeName = $null
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeOperation"))) { #optional property not found
            $AttributeOperation = $null
        } else {
            $AttributeOperation = $JsonParameters.PSobject.Properties["attributeOperation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeValue"))) { #optional property not found
            $AttributeValue = $null
        } else {
            $AttributeValue = $JsonParameters.PSobject.Properties["attributeValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "account" = ${Account}
            "application" = ${Application}
            "attributeName" = ${AttributeName}
            "attributeOperation" = ${AttributeOperation}
            "attributeValue" = ${AttributeValue}
            "state" = ${State}
        }

        return $PSO
    }

}

