# resume as code [![build status](https://github.com/nicholaschiasson/resume/actions/workflows/main.yml/badge.svg)](https://github.com/nicholaschiasson/resume/actions)

My professional resume and all associated resources, maintained as code and automated with CI/CD.

See it live here: https://nicholas.chiasson.dev/resume

# Development

## Prerequisites

- [mise](https://mise.jdx.dev)

## How-to

Install the project toolchain defined in `mise.toml`.

```shell
mise install
```

If `just` or `typst` are not found, enable mise shell activation so tools are on your PATH:

```bash
# Bash
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
exec bash -l

# Zsh
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
exec zsh -l
```

Build the resume from Typst source.

```shell
just build
```

Watch typst source and rebuild on changes.

```shell
just watch
```

Both the `build` and `watch` tasks invoke `typst` and output the resume as a pdf to `Nicholas_Chiasson_Resume.pdf` in the root of the project.

If you prefer to run `typst` directly, it is available in your PATH after `mise install`, for example:

```shell
typst c --font-path ./rsrc/fonts/ src/main.typ Nicholas_Chiasson_Resume.pdf
```
