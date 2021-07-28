############################################################
scihandlers.storeFile = (authCode, publicKey, fileName, fileContent) ->
    sessionInfo = session.getInfo(authCode)
    await data.storeFile(publicKey, fileName, fileContent, sessionInfo)
    return {ok: true}

############################################################
scihandlers.updateFile = (authCode, publicKey, fileName, fileContent) ->
    sessionInfo = session.getInfo(authCode)
    await data.updateFile(publicKey, fileName, fileContent, sessionInfo)
    return {ok: true}

############################################################
scihandlers.storeRestrictedFile = (authCode, publicKey, fileName, fileContent, keyNames) ->
    sessionInfo = session.getInfo(authCode)
    await data.storeRestrictedFile(publicKey, fileName, fileContent, keyNames, sessionInfo)
    return {ok: true}

############################################################
scihandlers.updateRestriction = (authCode, publicKey, fileName, keyNames, mode) ->
    sessionInfo = session.getInfo(authCode)
    await data.updateRestriction(publicKey, fileName, keyNames, mode, sessionInfo)
    return {ok: true}


