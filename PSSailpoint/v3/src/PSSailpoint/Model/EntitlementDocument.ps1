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

Entitlement

.PARAMETER Id
The unique ID of the referenced object.
.PARAMETER Name
The human readable name of the referenced object.
.PARAMETER Type
No description available.
.PARAMETER Description
A description of the entitlement
.PARAMETER Attribute
The name of the entitlement attribute
.PARAMETER Value
The value of the entitlement
.PARAMETER Modified
A date-time in ISO-8601 format
.PARAMETER Synced
A date-time in ISO-8601 format
.PARAMETER DisplayName
The display name of the entitlement
.PARAMETER Source
No description available.
.PARAMETER Privileged
No description available.
.PARAMETER IdentityCount
No description available.
.PARAMETER Tags
No description available.
.OUTPUTS

EntitlementDocument<PSCustomObject>
#>

function Initialize-EntitlementDocument {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accessprofile", "accountactivity", "account", "aggregation", "entitlement", "event", "identity", "role")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Synced},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => EntitlementDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "description" = ${Description}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "modified" = ${Modified}
            "synced" = ${Synced}
            "displayName" = ${DisplayName}
            "source" = ${Source}
            "privileged" = ${Privileged}
            "identityCount" = ${IdentityCount}
            "tags" = ${Tags}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementDocument<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementDocument<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementDocument<PSCustomObject>
#>
function ConvertFrom-JsonToEntitlementDocument {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => EntitlementDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EntitlementDocument
        $AllProperties = ("id", "name", "_type", "description", "attribute", "value", "modified", "synced", "displayName", "source", "privileged", "identityCount", "tags")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_type"))) {
            throw "Error! JSON cannot be serialized due to the required property '_type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "synced"))) { #optional property not found
            $Synced = $null
        } else {
            $Synced = $JsonParameters.PSobject.Properties["synced"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "description" = ${Description}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "modified" = ${Modified}
            "synced" = ${Synced}
            "displayName" = ${DisplayName}
            "source" = ${Source}
            "privileged" = ${Privileged}
            "identityCount" = ${IdentityCount}
            "tags" = ${Tags}
        }

        return $PSO
    }

}

