utils = {};

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
      utils.addButton(toolBar, entry)
    else
      if atom.packages.loadedPackages[entry.dependency]
        utils.addButton(toolBar, entry)
  else if entry.type == 'spacer'
    utils.addSpacer(toolBar)

module.exports = utils;
