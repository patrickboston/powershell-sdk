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

.PARAMETER ContributingFeatureName
Contributing feature name
.PARAMETER IdentityOutlierDisplayName
Identity display name
.PARAMETER OutlierFeatureDisplayValues
No description available.
.PARAMETER FeatureDefinition
Definition of the feature
.PARAMETER FeatureExplanation
Detailed explanation of the feature
.PARAMETER PeerDisplayName
outlier's peer identity display name
.PARAMETER PeerIdentityId
outlier's peer identity id
.PARAMETER AccessItemReference
Access Item reference
.OUTPUTS

OutlierFeatureSummary<PSCustomObject>
#>

function Initialize-BetaOutlierFeatureSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContributingFeatureName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityOutlierDisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${OutlierFeatureDisplayValues},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FeatureDefinition},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FeatureExplanation},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PeerDisplayName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PeerIdentityId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessItemReference}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaOutlierFeatureSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "contributingFeatureName" = ${ContributingFeatureName}
            "identityOutlierDisplayName" = ${IdentityOutlierDisplayName}
            "outlierFeatureDisplayValues" = ${OutlierFeatureDisplayValues}
            "featureDefinition" = ${FeatureDefinition}
            "featureExplanation" = ${FeatureExplanation}
            "peerDisplayName" = ${PeerDisplayName}
            "peerIdentityId" = ${PeerIdentityId}
            "accessItemReference" = ${AccessItemReference}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OutlierFeatureSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to OutlierFeatureSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OutlierFeatureSummary<PSCustomObject>
#>
function ConvertFrom-BetaJsonToOutlierFeatureSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaOutlierFeatureSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaOutlierFeatureSummary
        $AllProperties = ("contributingFeatureName", "identityOutlierDisplayName", "outlierFeatureDisplayValues", "featureDefinition", "featureExplanation", "peerDisplayName", "peerIdentityId", "accessItemReference")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contributingFeatureName"))) { #optional property not found
            $ContributingFeatureName = $null
        } else {
            $ContributingFeatureName = $JsonParameters.PSobject.Properties["contributingFeatureName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityOutlierDisplayName"))) { #optional property not found
            $IdentityOutlierDisplayName = $null
        } else {
            $IdentityOutlierDisplayName = $JsonParameters.PSobject.Properties["identityOutlierDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outlierFeatureDisplayValues"))) { #optional property not found
            $OutlierFeatureDisplayValues = $null
        } else {
            $OutlierFeatureDisplayValues = $JsonParameters.PSobject.Properties["outlierFeatureDisplayValues"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "featureDefinition"))) { #optional property not found
            $FeatureDefinition = $null
        } else {
            $FeatureDefinition = $JsonParameters.PSobject.Properties["featureDefinition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "featureExplanation"))) { #optional property not found
            $FeatureExplanation = $null
        } else {
            $FeatureExplanation = $JsonParameters.PSobject.Properties["featureExplanation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "peerDisplayName"))) { #optional property not found
            $PeerDisplayName = $null
        } else {
            $PeerDisplayName = $JsonParameters.PSobject.Properties["peerDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "peerIdentityId"))) { #optional property not found
            $PeerIdentityId = $null
        } else {
            $PeerIdentityId = $JsonParameters.PSobject.Properties["peerIdentityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessItemReference"))) { #optional property not found
            $AccessItemReference = $null
        } else {
            $AccessItemReference = $JsonParameters.PSobject.Properties["accessItemReference"].value
        }

        $PSO = [PSCustomObject]@{
            "contributingFeatureName" = ${ContributingFeatureName}
            "identityOutlierDisplayName" = ${IdentityOutlierDisplayName}
            "outlierFeatureDisplayValues" = ${OutlierFeatureDisplayValues}
            "featureDefinition" = ${FeatureDefinition}
            "featureExplanation" = ${FeatureExplanation}
            "peerDisplayName" = ${PeerDisplayName}
            "peerIdentityId" = ${PeerIdentityId}
            "accessItemReference" = ${AccessItemReference}
        }

        return $PSO
    }

}

