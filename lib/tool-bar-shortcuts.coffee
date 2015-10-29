module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-besser'

    @toolBar.addButton
        icon: 'file-text'
        callback: 'application:open-file'
        tooltip: 'Open File'
        iconset: 'fa'

    @toolBar.addButton
        icon: 'folder-open'
        callback: 'application:open-folder'
        tooltip: 'Open Folder'
        iconset: 'fa'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['git-projects']
        @toolBar.addButton
            icon: 'git'
            callback: 'git-projects:toggle'
            tooltip: 'Git Projects'
            iconset: 'fa'

    if atom.packages.loadedPackages['atom-ungit']
        @toolBar.addButton
            icon: 'code-fork'
            callback: 'ungit:toggle'
            tooltip: 'Ungit'
            iconset: 'fa'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['terminal-plus']
        @toolBar.addButton
            icon: 'terminal'
            callback: 'terminal-plus:new'
            tooltip: 'New Terminal'
            iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
        icon: 'columns'
        callback: 'pane:split-right'
        tooltip: 'Split screen - Horizontally'
        iconset: 'fa'

    @toolBar.addButton
        icon: 'columns fa-rotate-270'
        callback: 'pane:split-down'
        tooltip: 'Split screen - Vertically'
        iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
        icon: 'pound'
        callback: 'editor:toggle-line-comments'
        tooltip: 'Line Comments'
        iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
        icon: 'expand'
        callback: 'window:toggle-full-screen'
        tooltip: 'Toggle Fullscreen'
        iconset: 'fa'

    @toolBar.addButton
        icon: 'sitemap'
        callback: 'tree-view:toggle'
        tooltip: 'Toggle Sidebar'
        iconset: 'fa'

    @toolBar.addButton
        icon: 'map'
        callback: 'minimap:toggle'
        tooltip: 'Toggle Minimap'
        iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
        icon: 'cogs'
        callback: 'settings-view:open'
        tooltip: 'Open Settings View'
        iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
        icon: 'refresh'
        callback: 'window:reload'
        tooltip: 'Reload Window'
        iconset: 'fa'
