module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-almighty'

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

    @toolBar.addButton
      'icon': 'archive'
      'callback': 'core:save'
      'tooltip': 'Save File'
      'iconset': 'ion'

    if atom.packages.loadedPackages['git-control']
      @toolBar.addButton
        'iconset': 'fa'
        'icon': 'bullseye'
        'tooltip': 'Git Control'
        'callback': 'git-control:toggle'

    if atom.packages.loadedPackages['git-projects']
      @toolBar.addButton
        'iconset': 'fa'
        'icon': 'git'
        'tooltip': 'Git Projects'
        'callback': 'git-projects:toggle'
    if atom.packages.loadedPackages['project-manager']
      @toolBar.addButton
        'icon': 'file-submodule'
        'tooltip': 'List projects'
        'callback': 'project-manager:list-projects'

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

    if atom.packages.loadedPackages['merge-conflicts']
      @toolBar.addButton
        'icon': 'code-fork'
        'iconset': 'fa'
        'tooltip': 'Merge Conflicts'
        'callback': 'merge-conflicts:detect'

    @toolBar.addButton
      'iconset': 'fa'
      'icon': 'arrows-alt'
      'tooltip': 'Toggle Fullscreen'
      'callback': 'window:toggle-full-screen'

    @toolBar.addButton
      'icon': 'sitemap'
      'callback': 'tree-view:toggle'
      'tooltip': 'Toggle Sidebar'
      'iconset': 'fa'

    if atom.packages.loadedPackages['minimap']
      @toolBar.addButton
        'icon': 'map'
        'callback': 'minimap:toggle'
        'tooltip': 'Toggle Minimap'
        'iconset': 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'indent'
      'callback': 'editor:auto-indent'
      'tooltip': 'Auto indent (selection)'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'level-up'
      'callback': 'editor:fold-all'
      'tooltip': 'Fold all'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'level-down'
      'callback': 'editor:unfold-all'
      'tooltip': 'Unfold all'
      'iconset': 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'refresh'
      'callback': 'window:reload'
      'tooltip': 'Reload Window'
      'iconset': 'ion'

    if atom.packages.loadedPackages['term3']
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'term3:open-split-down'
        'tooltip': 'Term3 Split Down'
    else if atom.packages.loadedPackages['term2']
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'term2:open-split-down'
        'tooltip': 'Term2 Split Down'

    @toolBar.addButton
      'icon': 'bug'
      'callback': 'window:toggle-dev-tools'
      'tooltip': 'Toggle Developer Tools'

    @toolBar.addButton
      'icon': 'gear-a'
      'callback': 'settings-view:open'
      'tooltip': 'Open Settings View'
      'iconset': 'ion'
