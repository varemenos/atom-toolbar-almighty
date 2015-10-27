module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-besser'

    @toolBar.addButton
        icon: 'document-text'
        callback: 'application:open-file'
        tooltip: 'Open File'
        iconset: 'ion'

    @toolBar.addButton
        'icon': 'folder'
        'callback': 'application:open-folder'
        'tooltip': 'Open Folder'
        'iconset': 'ion'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['git-projects']
        @toolBar.addButton
            'icon': 'octoface'
            'tooltip': 'Git Projects'
            'callback': 'git-projects:toggle'

    if atom.packages.loadedPackages['atom-ungit']
        @toolBar.addButton
            'icon': 'git-commit'
            'tooltip': 'Ungit'
            'callback': 'ungit:toggle'

    if atom.packages.loadedPackages['terminal-plus']
        @toolBar.addButton
            'icon': 'terminal'
            'tooltip': 'New Terminal'
            'callback': 'terminal-plus:new'

    @toolBar.addSpacer()

    @toolBar.addButton
        'icon': 'columns'
        'iconset': 'fa'
        'tooltip': 'Split screen - Horizontally'
        'callback': 'pane:split-right'

    @toolBar.addButton
        'icon': 'columns fa-rotate-270'
        'iconset': 'fa'
        'tooltip': 'Split screen - Vertically'
        'callback': 'pane:split-down'

    @toolBar.addSpacer()

    @toolBar.addButton
        'iconset': 'ion'
        'icon': 'pound'
        'tooltip': 'Line Comments'
        'callback': 'editor:toggle-line-comments'

    @toolBar.addSpacer()

    @toolBar.addButton
        'icon': 'code'
        'tooltip': 'Toggle Fullscreen'
        'callback': 'window:toggle-full-screen'

    @toolBar.addButton
        'icon': 'sitemap'
        'callback': 'tree-view:toggle'
        'tooltip': 'Toggle Sidebar'
        'iconset': 'fa'

    @toolBar.addButton
        'icon': 'map'
        'callback': 'minimap:toggle'
        'tooltip': 'Toggle Minimap'
        'iconset': 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
        'icon': 'sync'
        'callback': 'window:reload'
        'tooltip': 'Reload Window'

    @toolBar.addButton
        'icon': 'tools'
        'callback': 'settings-view:open'
        'tooltip': 'Open Settings View'
