# config-files
My personal configuration files.
## Bash
For the bash configuration there is the `bash` directory. It contains:
- `colors.sh`: with the colors for the shell.
- `myPrompt.sh`: whit my prompt with the "⚡" emoji, so it will not be displayed if the shell wont enable the emoji.
## Arch installtion
For a fast arch installtion on a vm there is the `arch-installtion` directory.
It only contains the configuration file and the disk layout file, the `archinstall` command need also a credentials file to completed.
The configuration of the 2 files are easely editable with the `archinstall` tool.
Run this command to the iso installer: `archinstall --config user_configuration.json --disk_layouts user_disk_layout.json`.
