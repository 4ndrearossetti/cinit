# Cinit - C Project Initializer

Cinit is a simple bash script designed to initialize new C projects with a set of default files and a customized license. It automates the setup process, allowing users to quickly start coding with a standardized structure.

More details on my website: [andrearossetti.me](https://andrearossetti.me/projects/cinit)

## Installation

1. Clone the repository or download the files to your local machine:
   ```bash
   git clone https://github.com/rssndr/cinit.git
   cd cinit
   ```
2. Run the installation script with sudo privileges:
   ```bash
   ./install.sh
   ```
   - You will be prompted to enter your name, which will be used for the copyright notice in the license.
   - The script sets up the configuration file (`~/.config/cinit/cinit.conf`), copies default templates, and installs the `cinit` command to `/usr/local/bin/`.

## Usage

To initialize a new C project in the current directory, simply run:
```bash
cinit
```

This will:
- Copy default files (Makefile, .gitignore, main.c, README.md) from `~/.config/cinit/default/` to the current directory.
- Generate a LICENSE file based on the default license (currently MIT) from `~/.config/cinit/templates/licenses/`, dynamically inserting your name and the current year (e.g., 2025).

The resulting directory will contain:
- `Makefile`: A basic build script.
- `.gitignore`: A standard .gitignore file customised for C.
- `main.c`: A starter C source file.
- `README.md`: A placeholder README file.
- `LICENSE`: A customized MIT license with your name and the current year.

You can customize the initialization with the following repo-specific options:
- `--owner=<name>`              Sets the owner name for this repo.
- `--license=<type>`            Specifies the license.
- `--files=<list>`              Defines which files to include.
- `--year=<year>`               Sets a specific copyright year.

- `--default-owner=<name>`      Permanently change default owner.
- `--default-license=<type>`    Permanently change default license.
- `--default-files=<list>`      Permanently change default files list.

Examples:
- `cinit`
- `cinit --owner="John Doe" --license=MIT`
- `cinit --default-files="main.c LICENSE"`

Help:
- `cinit --help`                 Shows info on usage and options.

The resulting directory will contain the specified files, with a customized LICENSE reflecting the provided options.

## Current Features
- **Dynamic License Generation**: The LICENSE file is created each time from a template, replacing `{OWNER_NAME}` with your name (set during installation) and `{DEFAULT_YEAR}` with the current year.
- **Configurable Setup**: Uses `~/.config/cinit/cinit.conf` to store default settings (e.g., license type, included files). Defaults or project-specific settings can be modified with command-line arguments.
- **Default Templates**: Provides a pre-defined set of files for new projects.

## Demo
![](demo.gif)

## Contributing
Feel free to fork this repository, make improvements, and submit pull requests. Suggestions for new features or bug reports are welcome!

## License
This project itself is licensed under the MIT License. See the included LICENSE file for details.

