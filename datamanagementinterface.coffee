datamanagementinterface = {}

############################################################
datamanagementinterface.storeFile = (authCode, publicKey, fileName, fileContent) ->
    requestObject = { authCode, publicKey, fileName, fileContent }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["datamanagementinterface"]+"/storeFile"
    return @postData(requestURL, requestObject)

datamanagementinterface.updateFile = (authCode, publicKey, fileName, fileContent) ->
    requestObject = { authCode, publicKey, fileName, fileContent }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["datamanagementinterface"]+"/updateFile"
    return @postData(requestURL, requestObject)

datamanagementinterface.storeRestrictedFile = (authCode, publicKey, fileName, fileContent, keyNames) ->
    requestObject = { authCode, publicKey, fileName, fileContent, keyNames }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["datamanagementinterface"]+"/storeRestrictedFile"
    return @postData(requestURL, requestObject)

datamanagementinterface.updateRestriction = (authCode, publicKey, fileName, keyNames, mode) ->
    requestObject = { authCode, publicKey, fileName, keyNames, mode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["datamanagementinterface"]+"/updateRestriction"
    return @postData(requestURL, requestObject)

#endregion

    
module.exports = datamanagementinterface