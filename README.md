# Notebookinator Quick Start Template

In order to use this template you'll need to make a new repository based off of this one.

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/18e038d1-fa42-47f2-afb1-05b70bb391d8)

Once you do that, you have three options:

- edit locally
- edit in a codespace
- install locally

### Edit in Codespace

This is by far the easier option, but it is limited by the fact that you're editing your code in the cloud, leading to slower performance overall.

To get started, click the create codespace button:

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/0b8a2c2b-e6b2-4099-aac2-49022fee93e9)

Once you've done that, you're good to go!

### Edit Locally

If you want to edit your notebook locally, you can use the [Devcontainers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) VSCode extension.

Once you have it installed, press the button in the bottom left of VSCode to open the remote menu.

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/93efc90f-e498-4870-a47e-e76989881bf9)

Then, select the `reopen in container` option.

Once you do that, you're good to go!

You can compile your notebook by typing the following command into the terminal:

```sh
typst watch main.typ
```

### Install Locally
If you want to install the Notebookinator locally, you will need to install the following programs

- [Typst](https://github.com/typst/typst?tab=readme-ov-file#installation)
- [Git](https://git-scm.com/downloads)
- [VSCode](https://code.visualstudio.com/)

Once you've installed everything, run the following commands:

```admonish info
If you're running this on Windows, you'll need to run these commands in a sh
shell, like git-bash or the shell packaged with Cygwin or GitHub Desktop.
```

```bash
git clone https://github.com/BattleCh1cken/notebookinator
./notebookinator/scripts/package @local
rm -rf notebookinator
```

Once you do that you should be good to go!

## Usage

You can compile your notebook by typing the following command into the terminal:

```sh
typst watch main.typ
```

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/dfb1ded7-ffe3-4dcc-aec4-a15a27fbf3b2)

The resulting PDF can be then viewed with the already installed PDF viewer.

Alternatively you can view the live output in a separate tab with `typst-live`:

```sh
typst-live main.typ
```

## Creating Entries

To create a new entry you first need to create a new `.typ` file in the `entries/` folder. There are two different ways this project organizes entries. Either they are organized by project section (for example flywheel, or intake), or they are single entries.

To create a single entry, create a file with this path: `entries/<entry-name>/entry.typ`.
To create an entry in a group, create a file with the following path: `entries/<group-name>/<entry_name>.typ`

Once you've done this, you need to create an entry in the file.

```typ
#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "<EDP Stage>: <your title here>",
  type: "<EDP Stage>",
  date: datetime(year: 1982, month: 1, day: 1),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

Write your content here.

```

Make sure to read through the [Notebookinator documentation](https://the-notebookinator.github.io/notebookinator/) to see what components and options you can use while writing entries. You can also look at other existing entries as examples.

Once you're happy with your entry you'll need to add it to the entry index at `entries/entries.typ`, so that the `main.typ` file is aware of it.

Add the file to `entries/entries.typ` like this:

```typ
// Do this if its a single entry:
#include "./<entry_name>/entry.typ"

// Do this if its a group:
#include "./<group_name>/<entry_namge>.typ"
```

The order that the notebook renders the entries is dependent on the order that they're placed in this file, so make sure to put the `#include` in the correct spot.
