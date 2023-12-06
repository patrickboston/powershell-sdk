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

.PARAMETER JobId
Unique id assigned to this job.
.PARAMETER Status
Status of the job.
.PARAMETER Type
Type of the job, either export or import.
.PARAMETER Expiration
The time until which the artifacts will be available for download.
.PARAMETER Created
The time the job was started.
.PARAMETER Modified
The time of the last update to the job.
.PARAMETER Message
This message contains additional information about the overall status of the job.
.PARAMETER Completed
The time the job was completed.
.OUTPUTS

SpConfigImportJobStatus<PSCustomObject>
#>

function Initialize-BetaSpConfigImportJobStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${JobId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NOT_STARTED", "IN_PROGRESS", "COMPLETE", "CANCELLED", "FAILED")]
        [String]
        ${Status},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXPORT", "IMPORT")]
        [String]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Expiration},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Completed}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSpConfigImportJobStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $JobId) {
            throw "invalid value for 'JobId', 'JobId' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Expiration) {
            throw "invalid value for 'Expiration', 'Expiration' cannot be null."
        }

        if ($null -eq $Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if ($null -eq $Modified) {
            throw "invalid value for 'Modified', 'Modified' cannot be null."
        }

        if ($null -eq $Message) {
            throw "invalid value for 'Message', 'Message' cannot be null."
        }

        if ($null -eq $Completed) {
            throw "invalid value for 'Completed', 'Completed' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "jobId" = ${JobId}
            "status" = ${Status}
            "type" = ${Type}
            "expiration" = ${Expiration}
            "created" = ${Created}
            "modified" = ${Modified}
            "message" = ${Message}
            "completed" = ${Completed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpConfigImportJobStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpConfigImportJobStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpConfigImportJobStatus<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSpConfigImportJobStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSpConfigImportJobStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSpConfigImportJobStatus
        $AllProperties = ("jobId", "status", "type", "expiration", "created", "modified", "message", "completed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'jobId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jobId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'jobId' missing."
        } else {
            $JobId = $JsonParameters.PSobject.Properties["jobId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expiration' missing."
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modified' missing."
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) {
            throw "Error! JSON cannot be serialized due to the required property 'message' missing."
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed' missing."
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        $PSO = [PSCustomObject]@{
            "jobId" = ${JobId}
            "status" = ${Status}
            "type" = ${Type}
            "expiration" = ${Expiration}
            "created" = ${Created}
            "modified" = ${Modified}
            "message" = ${Message}
            "completed" = ${Completed}
        }

        return $PSO
    }

}

