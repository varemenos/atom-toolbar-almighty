path = require 'path'
utils = require './utils'
entries = require './entries'

toolBarAlmighty = {};

toolBarAlmighty.deactivate = ->
  @toolBar?.removeItems()

toolBarAlmighty.consumeToolBar = (toolBar) ->
  @toolBar = toolBar 'tool-bar-almighty'

  for entry in entries
    if entry.length
      for subentry in entry
        utils.parseEntry(@toolBar, subentry)
    else
      utils.parseEntry(@toolBar, entry)

module.exports = toolBarAlmighty;
