utils = {}

path = require 'path'
entries = require './entries'
pkg = require '../package.json'
fs = require('fs')

utils.getCustomEntries = (filepath) ->
  if filepath
    try
      thePath = path.join(atom.getConfigDirPath(), filepath)
      content = JSON.parse fs.readFileSync(thePath, 'utf8')
    catch error
      console.error error
      return false
    return content
  else
    return false

utils.addButton = (toolBar, entry) ->
  toolBar.addButton
    tooltip: entry.tooltip
    callback: entry.callback
    icon: entry.icon
    iconset: entry.iconset

utils.addSpacer = (toolBar) ->
  toolBar.addSpacer()

utils.parseEntry = (toolBar, entry) ->
  if entry.type == 'button'
    if !entry.dependency
      @addButton(toolBar, entry)
    else
      if atom.packages.loadedPackages[entry.dependency]
        @addButton(toolBar, entry)
  else if entry.type == 'spacer'
    @addSpacer(toolBar)

utils.populate = (toolBar) ->
  toolBar?.removeItems()

  customEntries = @getCustomEntries(atom.config.get(pkg.name + '.custom'))
  overrideDefault = atom.config.get(pkg.name + '.override')

  finalizedEntries = entries.filter((f) -> true) # clone

  if customEntries
    finalizedEntries = if overrideDefault then customEntries else finalizedEntries.concat(customEntries)

  for entry in finalizedEntries
    @parseEntry(toolBar, entry)

module.exports = utils
