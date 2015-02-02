module.exports = {

  componentWillMount: () ->
    @files = []

  addFile: (file) ->
    @files.push file

  getFiles: () ->
    return @files

  handleFileChange: (e) ->
    if e.target.files and e.target.files.length

      for file in e.target.files

        @addFile file
}
