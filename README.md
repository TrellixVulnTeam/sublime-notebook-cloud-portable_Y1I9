# Sublime Text Notebook setup
This will walk you through the installation of a **fully portable** note-taking environment.

**Notes are encrypted** and saved on your favorite [rclone-supported cloud service](https://rclone.org/overview/#features).

Common note apps can not **leverage the power of a code editor** such as Sublime Text.

Plus, you may be limited on your environment to not be able to install apps. This is fully portable and synchronizable in the cloud.

**Note**: Python 3 is included. If you have it installed on your system you may delete the `thonny-3.2.1-windows-portable`
directory and edit the [`_encrypt.bat`](./_encrypt.bat) file.

## Installation
### Prerequisites
 - Sublime Text with the Package Control extension
 - A [rclone-supported cloud service](https://rclone.org/overview/#features) account

### rclone configuration
rclone is a tool used to synchronize files with cloud services.

Start the rclone interactive configuration prompt with the `rclone_config.bat` script.

Select and configure your cloud provider. When asked for the remote name, set `remote`.

### Sublime Text extensions
#### MarkdownPreview
Install [MarkdownPreview](https://packagecontrol.io/packages/MarkdownPreview) with Package Control.

It is not required but useful to render Markdown templates.

### Sublime Notebook configuration
#### Notebook Sublime Text project
A Sublime Text project file is used to make it easier to navigate through your notes.

 1. `Project` menu
 2. `Open project`
 3. Select [`notebook.sublime-project`](.notebook.sublime-project)

#### Notebook Sublime Text build system
Notes can be encrypted with AES. It is considered a good practice. Your notes will be kept private when uploaded to the cloud.

**Note:** You must open your [Notebook Sublime Text project](#Notebook-Sublime-Text-project) or you will not be able to activate the note encryption build system.

 1. `Tools` menu
 2. `Build system` sub-menu
 3. Select `Start notes crypter`

### Keyboard shortcut configuration
Create the file `Default (Windows).sublime-keymap` at the following destination (if it does not already exist).
```
sublime_text/Data/Packages/User/Default (Windows).sublime-keymap
```

File content
```json
[
  { "keys": ["ctrl+alt+b"], "command": "markdown_preview", "args": {"target": "browser", "parser":"markdown"} }
]
```

## Usage
Put your notes in the `notes` directory.

 - The `public` directory will keep notes **unencrypted**
 - The `private_encrypted` directory will keep notes **encrypted**

### Scripts
| Script name | Description |
| ----------- | ----------- |
| [`_encrypt.bat`](./`_encrypt.bat) | Start the notes encrypter shell |
| [`_copy_remote_to_local.bat`](./`_copy_remote_to_local.bat) | Synchronize notes from your cloud service to local files |
| [`_copy_local_to_remote.bat`](./`_copy_local_to_remote.bat) | Synchronize notes from local files to your cloud service |
| [`rclone_config.bat`](./`rclone_config.bat) | Start the interactive rclone configuration prompt |

### Sublime Text keyboard shortcuts
 - Hit `Ctrl + b` or `Tools -> Build` to start the notes crypter
 - Hit `Ctrl + Alt + b` to preview Markdown in the browser

## License
| Project | License | Author |
| ------- | ------- | ------ |
| [SublimeNotebook](https://github.com/aviaryan/SublimeNotebook) | [MIT License](https://github.com/aviaryan/SublimeNotebook/blob/master/LICENSE) | [aviaryan](https://github.com/aviaryan) |
| [rclone](https://github.com/rclone/rclone) | [MIT License](https://rclone.org/licence/) | Nick Craig-Wood https://www.craig-wood.com/nick/ |
| [thonny](https://github.com/thonny/thonny) | [MIT License](https://github.com/thonny/thonny/blob/master/LICENSE.txt) | [Aivar Annamaa](https://github.com/aivarannamaa) |
| This project | [MIT License](./LICENSE) | [rigwild](https://github.com/rigwild) |
