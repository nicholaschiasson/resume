# resume as code [![build status](https://github.com/nicholaschiasson/resume/actions/workflows/main.yml/badge.svg)](https://github.com/nicholaschiasson/resume/releases/latest)

My professional resume and all associated resources, maintained as code and automated with CI/CD.

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

Both the `build` and `watch` tasks invoke `typst` and output the resume as a pdf to `resume.pdf` in the root of the project.

In the development shell, the `typst` command is made available in case you want to have more control over the build process.

### Legacy

This resume package used to be maintained on [GitLab](https://gitlab.com/nicholaschiasson/resume "Sorry! It's private now!") with [LaTeX](https://www.latex-project.org/), and briefly (moreso experimentally) with [JSON Resume](https://jsonresume.org/). While the source files from that time could be simply removed from the main branch of this repo, remaining accessible through version history, I prefer instead to keep them tracked in a directory off to the side. At least, for now.

The legacy source is located in the `legacy/` directory in the root of the repo.

To work with those files, change to that directory and open a development shell using the nix flake found in there.

Create the development shell environment.

```shell
cd legacy/
nix develop
```

Alternatively, you can enter the legacy shell environment by referencing it from the root of the repo as well.

```shell
nix develop '.#legacy'
```

The legacy development shell gives access to `node` and `npm`, necessary for installing nodejs dependencies to build the JSON Resume formatted version of the resume, as well as the full suite of LaTeX tooling provided by TeX Live to build the LaTeX formatted version of the resume. It's somewhat confusing to decipher from zero knowledge, but just about all capabilities are achievable via npm run scripts in the `package.json` file.
