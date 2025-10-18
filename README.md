# asdf-manpager

[manpager](https://github.com/Freed-Wu/manpager) — Colorize `man XXX`.

This is an asdf plugin for installing `manpager`. It is also compatible with [mise](https://github.com/jdx/mise) since mise supports asdf-compatible plugins.

Contents
- Requirements
- Install (asdf & mise)
- Usage
- Development
- License

Requirements
- bash, curl, tar, git
- macOS, Linux (tested via CI)
- No sudo required

Install

asdf
```bash
# add plugin
asdf plugin add manpager https://github.com/MustCodeAl/asdf-manpager.git

# list versions
asdf list all manpager

# install a version
asdf install manpager 0.0.3

# set the version (global or local)
asdf global manpager 0.0.3
# or
asdf local manpager 0.0.3
```

mise
```bash
# add plugin (asdf-compatible)
mise plugins install manpager https://github.com/MustCodeAl/asdf-manpager.git

# use a version globally
mise use -g manpager@0.0.3
```

Usage

Export MANPAGER so man uses it:

```bash
# asdf
export MANPAGER="$(asdf where manpager)/bin/manpager"

# or mise
export MANPAGER="$(mise where manpager)/bin/manpager"
```

Then:
```bash
man ls
```

Versions
- Versions are sourced from upstream Git tags at https://github.com/Freed-Wu/manpager/tags.
- Example tags seen: 0.0.1, 0.0.2, 0.0.3.

Development
- Format and lint shell scripts with shellcheck and shfmt
- Tests: bats
- CI runs on Ubuntu and macOS

Run tests locally
```bash
# lint
shellcheck bin/* lib/*.bash
shfmt -d -i 2 -ci -sr .

# test
bats test
```

License
See LICENSE
