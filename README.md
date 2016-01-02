Toolbar Almighty - a tool-bar plugin

> A tool-bar plugin that adds many commonly used actions in the tool-bar.

## Toolbar entries

![screenshot](https://rawgit.com/varemenos/atom-toolbar-almighty/master/screenshot.png)

Available toolbar buttons:

* open file
* open folder
* save file
* open git-control _(missing from the screenshot) (requires `git-control` package)_
* open git projects _(requires `git-projects` package)_
* list projects _(requires `project-manager` package)_
* -
* split screen horizontally
* split screen vertically
* -
* git merge conflicts _(requires `merge-conflicts` package)_
* toggle fullscreen
* toggle tree-view
* toggle minimap _(requires `minimap` package)_
* -
* auto indent
* fold all
* unfold all
* -
* reload window
* toggle devtools
* settings

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

## Options

You have the ability to include [custom entries](https://github.com/varemenos/atom-toolbar-almighty#custom-entries).
You also have the ability to load the [suggested defaults](https://github.com/varemenos/atom-toolbar-almighty#toolbar-entries) along side your custom entries, or only the custom entries.

## Custom entries

I've added basic support for custom entries in v0.4. To utilize this feature you have to go to the settings of tool-bar-almighty and enter a path relative to your `.atom` directory that contains the entries you want to add. They will be added below the default entries.

The file must be a javascript module that exports an Array of entries.

### Format

The format is the same as [tool-bar's](https://github.com/suda/tool-bar#example) with 2 extra properties. The first one is `type` which indicates whether the entry is a `button` or a `spacer` while the second one is `dependency` which indicates whether a button's package is not installed by default in Atom and should only be displayed if it's package is installed.
The `lib/entries.coffee` is another example on how to format your entries.

### Example

* The file's location `~/.atom/custom_entries.js`
* The tool-bar-almighty setting's value must match the filename mentioned above `custom_entries.js`
* The content of the file should look like the following:

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

## Known Issues / FAQ

* We've decided to remove the term2/term3 entries from the default entries, for more details and a possible fix read [this](https://github.com/varemenos/atom-toolbar-almighty/issues/9) issue's thread.

## License

The MIT License
