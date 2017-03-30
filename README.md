> Toolbar Almighty - the only toolbar you need

![https://img.shields.io/apm/v/tool-bar-almighty.svg](https://img.shields.io/apm/v/tool-bar-almighty.svg)
![https://img.shields.io/apm/dm/tool-bar-almighty.svg](https://img.shields.io/apm/dm/tool-bar-almighty.svg)

This is a toolbar that provides many commonly used actions utilizing the tool-bar API.

![screenshot](https://rawgit.com/varemenos/atom-toolbar-almighty/master/screenshot.png)

## Toolbar entries

Available toolbar buttons:

* new file
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

1. You have the ability to include [custom entries](https://github.com/varemenos/atom-toolbar-almighty#custom-entries).
2. You also have the ability to load the [suggested defaults](https://github.com/varemenos/atom-toolbar-almighty#toolbar-entries) along side your custom entries, or only the custom entries.

## Custom entries

You have the ability to include custom entries in the tool-bar-almighty by enabling the option in the package settings and entering a path relative to your `.atom` directory (that contains the entries you want to add).

The file must be in JSON format that contains an Array of entries.

### Format

The format is based on [tool-bar's](https://github.com/suda/tool-bar#example) but include 2 extra properties.

1. `type` indicates whether the entry is a `button` or a `spacer`
2. `dependency` indicates whether a button's package is not installed by default in Atom and should only be displayed if it's package is installed.

### Example

* Create a file inside `.atom`'s directory, in this case `~/.atom/custom_entries.json`
* The tool-bar-almighty setting's value must match the filename mentioned above `custom_entries.json` (relative to the `.atom` directory)
* The content of the file should look like the following:

```json
[
  {
    "type": "button",
    "tooltip": "Open File",
    "callback": "application:open-file",
    "icon": "document-text",
    "iconset": "ion"
  },
  {
    "type": "spacer"
  },
  {
    "type": "button",
    "tooltip": "Open Folder",
    "callback": "application:open-folder",
    "icon": "folder",
    "iconset": "ion"
  },
  {
    "type": "button",
    "tooltip": "Merge Conflicts",
    "dependency": "merge-conflicts",
    "callback": "merge-conflicts:detect",
    "icon": "code-fork",
    "iconset": "fa"
  }
]
```

## Known Issues / FAQ

* We've decided to remove the term2/term3 entries from the default entries, for more details and a possible fix read [this](https://github.com/varemenos/atom-toolbar-almighty/issues/9) issue's thread.
* We've decided to only support the JSON format for the custom entries to prevent future formating issues.

## License

The MIT License
