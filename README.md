# Toolbar Almighty - a tool-bar plugin

## Description

An atom-tool-bar plugin that adds many commonly used actions in the tool-bar.

![screenshot](https://rawgit.com/varemenos/atom-toolbar-almighty/master/screenshot.png)

Available toolbar buttons:

* __open file__
* __open folder__
* __save file__
* __open git-control__ (missing from the screenshot) (requires `git-control` package)
* __open git projects__ (requires `git-projects` package)
* __list projects__ (requires `project-manager` package)
* -
* __split left__
* __split right__
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

## TODO

Add package settings to toggle (and maybe reorder) toolbar items

## License

The MIT License
