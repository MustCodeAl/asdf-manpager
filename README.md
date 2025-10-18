# asdf-manpager

```markdown
[manpager](https://github.com/Freed-Wu/manpager) — Colorize `man XXX`.

This is an asdf plugin for installing `manpager`. It is also compatible with [mise](https://github.com/jdx/mise) since mise supports asdf-compatible plugins.

Default version
- If no version is provided to the installer (some wrappers like mise may call the install script without a version), the plugin will default to 0.0.3.

Install (examples)

# add plugin (replace with your repo)
asdf plugin add manpager https://github.com/MustCodeAl/asdf-manpager.git

# install explicit version
asdf install manpager 0.0.3

# install using default (no version argument)
# NOTE: asdf CLI normally requires a version argument. This is intended to help wrappers
# that call the plugin's install script without an explicit version (mise, etc.)
# The plugin installer will default to 0.0.3 if none is supplied.
asdf install manpager

# set the version (global or local)
asdf global manpager 0.0.3
# or
asdf local manpager 0.0.3
```
