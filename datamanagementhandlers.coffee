############################################################
scihandlers.storeFile = (authCode, publicKey, fileName, fileContent) ->
    await data.storeFile(publicKey, fileName, fileContent)
    return {ok: true}

############################################################
scihandlers.updateFile = (authCode, publicKey, fileName, fileContent) ->
    await data.updateFile(publicKey, fileName, fileContent)
    return {ok: true}

############################################################
scihandlers.storeRestrictedFile = (authCode, publicKey, fileName, fileContent, keyNames) ->
    await data.storeRestrictedFile(publicKey, fileName, fileContent, keyNames)
    return {ok: true}

############################################################
scihandlers.updateRestriction = (authCode, publicKey, fileName, keyNames, mode) ->
    await data.updateRestriction(publicKey, fileName, keyNames, mode)
    return {ok: true}


