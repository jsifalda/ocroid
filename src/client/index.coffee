RiotControl = require 'riot-control'

UploaderStore = require './components/uploader/stores/UploaderStore'
uploaderStore = new UploaderStore()
RiotControl.addStore uploaderStore

TextesStore = require './components/textes/stores/TextesStore'
textesStore = new TextesStore()
RiotControl.addStore textesStore

require './components/uploader/UploaderForm.tag'
require './components/textes/TextList.tag'

riot.mount('*');
