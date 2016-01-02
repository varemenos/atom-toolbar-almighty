path = require 'path'
utils = require './utils'
entries = require './entries'
pkg = require '../package.json'

toolBarAlmighty = {};

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

  customEntries = utils.getCustomEntries(atom.config.get(pkg.name + '.custom'))
  overrideDefault = atom.config.get(pkg.name + '.override')

  if customEntries
    entries = if overrideDefault then customEntries else entries.concat(customEntries)

  for entry in entries
    utils.parseEntry(@toolBar, entry)

module.exports = toolBarAlmighty;
