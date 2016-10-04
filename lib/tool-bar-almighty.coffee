path = require 'path'
utils = require './utils'
pkg = require '../package.json'

toolBarAlmighty = {}

toolBarAlmighty.config =
  custom:
    title: 'Custom entries file'
    description: 'A cson or json file path containing extra entries. Path should be relative to the Atom\'s configuration directory (.atom). For details read tool-bar-almighty\'s README.md file'
    type: 'string'
    default: ''
  override:
    title: 'Override default entries'
    description: 'If checked, default `entries.coffee` buttons are replaced with the settings above, otherwise the default settings is extended with the file above.'
    type: 'boolean'
    default: false


toolBarAlmighty.deactivate = ->
  @toolBar?.removeItems()

toolBarAlmighty.consumeToolBar = (toolBar) ->
  @toolBar = toolBar 'tool-bar-almighty'
  utils.populate(@toolBar)

  atom.config.observe pkg.name + '.override', (newVal) ->
    utils.populate(toolBarAlmighty.toolBar)

  atom.config.observe pkg.name + '.custom', (newVal) ->
    utils.populate(toolBarAlmighty.toolBar)

module.exports = toolBarAlmighty
