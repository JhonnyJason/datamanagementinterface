############################################################
sciroutes.storeFile = (req, res) ->
    try
        response = await h.storeFile(req.body.authCode, req.body.publicKey, req.body.fileName, req.body.fileContent)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.updateFile = (req, res) ->
    try
        response = await h.updateFile(req.body.authCode, req.body.publicKey, req.body.fileName, req.body.fileContent)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.storeRestrictedFile = (req, res) ->
    try
        response = await h.storeRestrictedFile(req.body.authCode, req.body.publicKey, req.body.fileName, req.body.fileContent, req.body.keyNames)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.updateRestriction = (req, res) ->
    try
        response = await h.updateRestriction(req.body.authCode, req.body.publicKey, req.body.fileName, req.body.keyNames, req.body.mode)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

