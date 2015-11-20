# Toolbar Almighty - a tool-bar plugin

## Description

An tool-bar plugin that adds many commonly used actions in the tool-bar.

![screenshot](https://rawgit.com/varemenos/atom-toolbar-almighty/master/screenshot.png)

Available toolbar buttons:

* __open file__
* __open folder__
* __save file__
* __open git-control__ (missing from the screenshot) (requires `git-control` package)
* __open git projects__ (requires `git-projects` package)
* __list projects__ (requires `project-manager` package)
* -
* __split screen horizontally__
* __split screen vertically__
* -
* __git merge conflicts__ (requires `merge-conflicts` package)
* __toggle fullscreen__
* __toggle tree-view__
* __toggle minimap__ (requires `minimap` package)
* -
* __auto indent__
* __fold all__
* __unfold all__
* -
* __reload window__
* __opens a terminal (split bottom)__  (requires `term2` or `term3` package)
* __toggle devtools__
* __settings__

__Note__: The toolbar buttons that require other packages will only appear if you have those packages installed

## Installation

First you have to install the `tool-bar` package which is required:

```bash
apm install tool-bar
```

Then you install the `tool-bar-almighty` package:

```bash
apm install tool-bar-almighty
```

## Custom entries

I've added basic support for custom entries in v0.4. To utilize this feature you have to go to the settings of tool-bar-almighty and enter a path relative to your `.atom` directory that contains the entries you want to add. They will be added below the default entries.

The file must be a javascript module that exports an Array of entries.

### Format

The format is the same as [tool-bar's](https://github.com/suda/tool-bar#example) with 2 extra properties. The first one is `type` which indicates whether the entry is a `button` or a `spacer` while the second one is `dependency` which indicates whether a button's package is not installed by default in Atom and should only be displayed if it's package is installed.
The `lib/entries.coffee` is another example on how to format your entries.

### Example

* The file's location `~/.atom/custom_entries.js`
* The tool-bar-almighty setting's value `custom_entries`
* The content of the file:

```js
module.exports = [
  {
    type: 'button',
    tooltip: 'Open File',
    callback: 'application:open-file',
    icon: 'document-text',
    iconset: 'ion'
  },
  {
    type: 'button',
    tooltip: 'Open Folder',
    callback: 'application:open-folder',
    icon: 'folder',
    iconset: 'ion'
  },
  {
    type: 'button',
    tooltip: 'Merge Conflicts',
    dependency: 'merge-conflicts',
    callback: 'merge-conflicts:detect',
    icon: 'code-fork',
    iconset: 'fa'
  }
]
```

## License

The MIT License
