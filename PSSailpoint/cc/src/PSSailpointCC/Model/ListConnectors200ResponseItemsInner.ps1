#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ApplicationXml
No description available.
.PARAMETER ClassName
No description available.
.PARAMETER ConnectorMetadata
No description available.
.PARAMETER CorrelationConfigXml
No description available.
.PARAMETER DirectConnect
No description available.
.PARAMETER FileUpload
No description available.
.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER S3Location
No description available.
.PARAMETER Scope
No description available.
.PARAMETER ScriptName
No description available.
.PARAMETER SourceConfig
No description available.
.PARAMETER SourceConfigFrom
No description available.
.PARAMETER SourceConfigXml
No description available.
.PARAMETER Status
No description available.
.PARAMETER TranslationProperties
No description available.
.PARAMETER Type
No description available.
.PARAMETER UploadedFiles
No description available.
.OUTPUTS

ListConnectors200ResponseItemsInner<PSCustomObject>
#>

function Initialize-CCListConnectors200ResponseItemsInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationXml},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConnectorMetadata},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CorrelationConfigXml},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DirectConnect},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FileUpload},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Id},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${S3Location},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Scope},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptName},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceConfig},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceConfigFrom},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceConfigXml},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TranslationProperties},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UploadedFiles}
    )

    Process {
        'Creating PSCustomObject: PSSailpointCC => CCListConnectors200ResponseItemsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "applicationXml" = ${ApplicationXml}
            "className" = ${ClassName}
            "connectorMetadata" = ${ConnectorMetadata}
            "correlationConfigXml" = ${CorrelationConfigXml}
            "directConnect" = ${DirectConnect}
            "fileUpload" = ${FileUpload}
            "id" = ${Id}
            "name" = ${Name}
            "s3Location" = ${S3Location}
            "scope" = ${Scope}
            "scriptName" = ${ScriptName}
            "sourceConfig" = ${SourceConfig}
            "sourceConfigFrom" = ${SourceConfigFrom}
            "sourceConfigXml" = ${SourceConfigXml}
            "status" = ${Status}
            "translationProperties" = ${TranslationProperties}
            "type" = ${Type}
            "uploadedFiles" = ${UploadedFiles}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListConnectors200ResponseItemsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListConnectors200ResponseItemsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListConnectors200ResponseItemsInner<PSCustomObject>
#>
function ConvertFrom-CCJsonToListConnectors200ResponseItemsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointCC => CCListConnectors200ResponseItemsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CCListConnectors200ResponseItemsInner
        $AllProperties = ("applicationXml", "className", "connectorMetadata", "correlationConfigXml", "directConnect", "fileUpload", "id", "name", "s3Location", "scope", "scriptName", "sourceConfig", "sourceConfigFrom", "sourceConfigXml", "status", "translationProperties", "type", "uploadedFiles")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationXml"))) { #optional property not found
            $ApplicationXml = $null
        } else {
            $ApplicationXml = $JsonParameters.PSobject.Properties["applicationXml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "className"))) { #optional property not found
            $ClassName = $null
        } else {
            $ClassName = $JsonParameters.PSobject.Properties["className"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorMetadata"))) { #optional property not found
            $ConnectorMetadata = $null
        } else {
            $ConnectorMetadata = $JsonParameters.PSobject.Properties["connectorMetadata"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "correlationConfigXml"))) { #optional property not found
            $CorrelationConfigXml = $null
        } else {
            $CorrelationConfigXml = $JsonParameters.PSobject.Properties["correlationConfigXml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "directConnect"))) { #optional property not found
            $DirectConnect = $null
        } else {
            $DirectConnect = $JsonParameters.PSobject.Properties["directConnect"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fileUpload"))) { #optional property not found
            $FileUpload = $null
        } else {
            $FileUpload = $JsonParameters.PSobject.Properties["fileUpload"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "s3Location"))) { #optional property not found
            $S3Location = $null
        } else {
            $S3Location = $JsonParameters.PSobject.Properties["s3Location"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptName"))) { #optional property not found
            $ScriptName = $null
        } else {
            $ScriptName = $JsonParameters.PSobject.Properties["scriptName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceConfig"))) { #optional property not found
            $SourceConfig = $null
        } else {
            $SourceConfig = $JsonParameters.PSobject.Properties["sourceConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceConfigFrom"))) { #optional property not found
            $SourceConfigFrom = $null
        } else {
            $SourceConfigFrom = $JsonParameters.PSobject.Properties["sourceConfigFrom"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceConfigXml"))) { #optional property not found
            $SourceConfigXml = $null
        } else {
            $SourceConfigXml = $JsonParameters.PSobject.Properties["sourceConfigXml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "translationProperties"))) { #optional property not found
            $TranslationProperties = $null
        } else {
            $TranslationProperties = $JsonParameters.PSobject.Properties["translationProperties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uploadedFiles"))) { #optional property not found
            $UploadedFiles = $null
        } else {
            $UploadedFiles = $JsonParameters.PSobject.Properties["uploadedFiles"].value
        }

        $PSO = [PSCustomObject]@{
            "applicationXml" = ${ApplicationXml}
            "className" = ${ClassName}
            "connectorMetadata" = ${ConnectorMetadata}
            "correlationConfigXml" = ${CorrelationConfigXml}
            "directConnect" = ${DirectConnect}
            "fileUpload" = ${FileUpload}
            "id" = ${Id}
            "name" = ${Name}
            "s3Location" = ${S3Location}
            "scope" = ${Scope}
            "scriptName" = ${ScriptName}
            "sourceConfig" = ${SourceConfig}
            "sourceConfigFrom" = ${SourceConfigFrom}
            "sourceConfigXml" = ${SourceConfigXml}
            "status" = ${Status}
            "translationProperties" = ${TranslationProperties}
            "type" = ${Type}
            "uploadedFiles" = ${UploadedFiles}
        }

        return $PSO
    }

}

