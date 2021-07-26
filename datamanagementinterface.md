[![hackmd-github-sync-badge](https://hackmd.io/4UKQrvqEQSulFM_qKHDCGA/badge)](https://hackmd.io/4UKQrvqEQSulFM_qKHDCGA)
###### tags: `documentation` `sci`

# [datamanagementinterface](https://github.com/JhonnyJason/datamanagementinterface) v0.1

### /storeFile
When first storing a file in the Data Manager we use this endpoint. If we use `/storeFile` for a file which already exists we will receive an error.
Aside of the `filename` and `fileContent` we require the `publicKey` of an authorized account. Also we require the `authCode` to proof we act on behalf of that authorized account.
#### request
```json
{
    "authCode": "",
    "publicKey": "",
    "fileName": "",
    "fileContent": ""   
}
```
#### response
```json
{
    "ok": true
}
```

### /updateFile
When we already have a file of said `fileName` then we use this endpoint. If we use`updateFile` for a file which does not exist already we will receive an error.
Aside of the `fileName` and `fileContent` we require the `publicKey` of an authorized account. Also we require the `authCode` to proof we act on behalf of that authorized account.
#### request
```json
{
    "authCode": "",
    "publicKey": "",
    "fileName": "",
    "fileContent": ""
}
```
#### response
```json
{
    "ok": true
}
```

### /storeRestrictedFile
Basically the same as `/storeFile`. Additionally we send the `keyNames` which the `Data Manager` may use to find the keys for which the file access is restricted to. We may also have an empty array so nobody has access to the file.
#### request
```json
{
    "authCode": "",
    "publicKey": "", //maybe wedonot need this :-)
    "fileName": "",
    "fileContent": "",
    "keyNames": []    
}
```
#### response
```json
{
    "ok": true
}
```

### /updateRestriction
We will receive an error, if the file does not exist yet.
Basically we change the restriction - for that we provide an array of `keyNames` and a `mode`.
The `mode` may be one of following strings
- "denyAccess" - for excluding said keys from having access
- "grantAccess" - for adding new keys for which the file access is restricted to. 
- "unrestrict" - for making the file unrestricted

#### request
```json
{
    "authCode": "",
    "publicKey": "",
    "fileName": "",
    "keyNames": [],
    "mode": ""
}
```
#### response
```json
{
    "ok": true
}
```

{%hackmd qbdgtO9mQ2CagvyXdya6Uw %}
