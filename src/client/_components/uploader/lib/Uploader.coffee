Promise = require 'bluebird'
$ = require 'jQuery'

class Uploader

  constructor: (@endpoint) ->

  createFormData: (files) ->
    formData = new FormData()

    if files and files.length
      for file in files
        formData.append 'image', file

    return formData

  upload: (files) ->
    return new Promise (resolve, reject) =>
      $.ajax {
        url: @endpoint
        type: 'POST'
        data: @createFormData files
        processData: false
        contentType: false
        success: (res) ->
          resolve res

        error: (error) ->
          reject error
      }


module.exports = Uploader
