builder = (controllers) ->
  return {

  '/v1/file':
    post:
      controller: controllers.UploadFile

  '/v1/file/data':
    post:
      controller: controllers.UploadFileData

  }

module.exports = builder
