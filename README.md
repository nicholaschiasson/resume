# resume as code [![build status](https://github.com/nicholaschiasson/resume/actions/workflows/main.yml/badge.svg)](https://github.com/nicholaschiasson/resume/actions)

My professional resume and all associated resources, maintained as code and automated with CI/CD.

See it live here: https://nicholas.chiasson.dev/resume

# Development

## Prerequisites

- [nix](https://nixos.org/download.html)
- [nix flakes](https://nixos.wiki/wiki/Flakes#Enable_flakes)

## How-to

Create the development shell environment.

```shell
nix develop
```

Build the resume from typst source.

```shell
just build
```

Watch typst source and rebuild on changes.

```shell
just watch
```

Both the `build` and `watch` tasks invoke `typst` and output the resume as a pdf to `Nicholas_Chiasson_Resume.pdf` in the root of the project.

In the development shell, the `typst` command is made available in case you want to have more control over the build process.
