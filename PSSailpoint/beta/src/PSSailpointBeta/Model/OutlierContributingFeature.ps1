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

.PARAMETER Id
Contributing feature id
.PARAMETER Name
The name of the feature
.PARAMETER ValueType
The data type of the value field
.PARAMETER Value
No description available.
.PARAMETER Importance
The importance of the feature. This can also be a negative value
.PARAMETER DisplayName
The (translated if header is passed) displayName for the feature
.PARAMETER Description
The (translated if header is passed) description for the feature
.PARAMETER TranslationMessages
No description available.
.OUTPUTS

OutlierContributingFeature<PSCustomObject>
#>

function Initialize-BetaOutlierContributingFeature {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INTEGER", "FLOAT")]
        [String]
        ${ValueType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Importance},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TranslationMessages}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaOutlierContributingFeature' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Importance -and $Importance -gt 1.0) {
          throw "invalid value for 'Importance', must be smaller than or equal to 1.0."
        }

        if ($Importance -and $Importance -lt -1.0) {
          throw "invalid value for 'Importance', must be greater than or equal to -1.0."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "valueType" = ${ValueType}
            "value" = ${Value}
            "importance" = ${Importance}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "translationMessages" = ${TranslationMessages}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OutlierContributingFeature<PSCustomObject>

.DESCRIPTION

Convert from JSON to OutlierContributingFeature<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OutlierContributingFeature<PSCustomObject>
#>
function ConvertFrom-BetaJsonToOutlierContributingFeature {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaOutlierContributingFeature' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaOutlierContributingFeature
        $AllProperties = ("id", "name", "valueType", "value", "importance", "displayName", "description", "translationMessages")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueType"))) { #optional property not found
            $ValueType = $null
        } else {
            $ValueType = $JsonParameters.PSobject.Properties["valueType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "importance"))) { #optional property not found
            $Importance = $null
        } else {
            $Importance = $JsonParameters.PSobject.Properties["importance"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "translationMessages"))) { #optional property not found
            $TranslationMessages = $null
        } else {
            $TranslationMessages = $JsonParameters.PSobject.Properties["translationMessages"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "valueType" = ${ValueType}
            "value" = ${Value}
            "importance" = ${Importance}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "translationMessages" = ${TranslationMessages}
        }

        return $PSO
    }

}

