#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Cancel Access Request

.DESCRIPTION

This API endpoint cancels a pending access request. An access request can be cancelled only if it has not passed the approval step. Any token with ORG_ADMIN authority or token of the user who originally requested the access request is required to cancel it.

.PARAMETER CancelAccessRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemCollectionsHashtable
#>
function Suspend-AccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CancelAccessRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Suspend-AccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-requests/cancel'

        if (!$CancelAccessRequest) {
            throw "Error! The required parameter `CancelAccessRequest` missing when calling cancelAccessRequest."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $CancelAccessRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $CancelAccessRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemCollectionsHashtable" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Submit an Access Request

.DESCRIPTION

This submits the access request into IdentityNow, where it will follow any IdentityNow approval processes.  Access requests are processed asynchronously by IdentityNow.  A success response from this endpoint means the request has been submitted to IDN and is queued for processing.  Because this endpoint is asynchronous, it will not return an error if you submit duplicate access requests in quick succession, or you submit an access request for access that is already in progress, approved, or rejected. It is best practice to check for any existing access requests that reference the same access items before submitting a new access request.  This can be accomplished by using the [access request status](https://developer.sailpoint.com/idn/api/v3/list-access-request-status) or the [pending access request approvals](https://developer.sailpoint.com/idn/api/v3/list-pending-approvals) endpoints.  You can also use the [search API](https://developer.sailpoint.com/idn/api/v3/search) to check the existing access items that an identity has before submitting an access request to ensure you are not requesting access that is already granted.  There are two types of access request:  __GRANT_ACCESS__ * Can be requested for multiple identities in a single request. * Supports self request and request on behalf of other users, see '/beta/access-request-config' endpoint for request configuration options.   * Allows any authenticated token (except API) to call this endpoint to request to grant access to themselves. Depending on the configuration, a user can request access for others. * Roles, Access Profiles and Entitlements can be requested. * While requesting entitlements, maximum of 25 entitlements and 10 recipients are allowed in a request.   __REVOKE_ACCESS__ * Can only be requested for a single identity at a time. * Does not support self request. Only manager can request to revoke access for their directly managed employees. * If removeDate is specified, then the access will be removed on that date and time only for Roles and Access Profiles. Entitlements are currently unsupported for removeDate. * Roles, Access Profiles, and Entitlements can be requested for revocation. * Revoke requests for entitlements are limited to 1 entitlement per access request currently. * [Roles, Access Profiles] RemoveData can be specified only if access don't have a sunset date. * Allows a manager to request to revoke access for direct employees. A token with ORG_ADMIN authority can also request to revoke access from anyone.  NOTE: There is no indication to the approver in the IdentityNow UI that the approval request is for a revoke action. Take this into consideration when calling this API.  A token with API authority cannot be used to call this endpoint.  

.PARAMETER AccessRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemCollectionsHashtable
#>
function New-AccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${AccessRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-AccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-requests'

        if (!$AccessRequest) {
            throw "Error! The required parameter `AccessRequest` missing when calling createAccessRequest."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $AccessRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $AccessRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemCollectionsHashtable" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get Access Request Configuration

.DESCRIPTION

This endpoint returns the current access-request configuration.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AccessRequestConfig
#>
function Get-AccessRequestConfig {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AccessRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/access-request-config'



        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AccessRequestConfig" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Access Request Status

.DESCRIPTION

The Access Request Status API returns a list of access request statuses based on the specified query parameters. Any token with any authority can request their own status. A token with ORG_ADMIN authority is required to call this API to get a list of statuses for other users.

.PARAMETER RequestedFor
Filter the results by the identity for which the requests were made. *me* indicates the current user. Mutually exclusive with *regarding-identity*.

.PARAMETER RequestedBy
Filter the results by the identity that made the requests. *me* indicates the current user. Mutually exclusive with *regarding-identity*.

.PARAMETER RegardingIdentity
Filter the results by the specified identity which is either the requester or target of the requests. *me* indicates the current user. Mutually exclusive with *requested-for* and *requested-by*.

.PARAMETER Count
If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.

.PARAMETER Limit
Max number of results to return.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. Defaults to 0 if not specified.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **accountActivityItemId**: *eq, in*

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified, accountActivityItemId**

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RequestedItemStatus[]
#>
function Get-AccessRequestStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RequestedFor},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RequestedBy},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RegardingIdentity},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AccessRequestStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/access-request-status'

        if ($RequestedFor) {
            $LocalVarQueryParameters['requested-for'] = $RequestedFor
        }

        if ($RequestedBy) {
            $LocalVarQueryParameters['requested-by'] = $RequestedBy
        }

        if ($RegardingIdentity) {
            $LocalVarQueryParameters['regarding-identity'] = $RegardingIdentity
        }

        if ($Count) {
            $LocalVarQueryParameters['count'] = $Count
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }



        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RequestedItemStatus[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update Access Request Configuration

.DESCRIPTION

This endpoint replaces the current access-request configuration. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER AccessRequestConfig
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AccessRequestConfig
#>
function Update-AccessRequestConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${AccessRequestConfig},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-AccessRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-request-config'

        if (!$AccessRequestConfig) {
            throw "Error! The required parameter `AccessRequestConfig` missing when calling updateAccessRequestConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $AccessRequestConfig | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $AccessRequestConfig | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AccessRequestConfig" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

