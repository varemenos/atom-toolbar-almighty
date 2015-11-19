path = require 'path'
utils = require './utils'
entries = require './entries'

toolBarAlmighty = {};

toolBarAlmighty.deactivate = ->
  @toolBar?.removeItems()

toolBarAlmighty.consumeToolBar = (toolBar) ->
  @toolBar = toolBar 'tool-bar-almighty'

  for entry in entries
    utils.parseEntry(@toolBar, entry)

module.exports = toolBarAlmighty;
