# LoadEntitlementsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadEntitlementsRequest = Initialize-PSSailpointCCLoadEntitlementsRequest  -File null
```

- Convert the resource to JSON
```powershell
$LoadEntitlementsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

