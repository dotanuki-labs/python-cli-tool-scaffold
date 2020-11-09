# Scaffold for CLI Tools🔥

## What is this?

> *A template to easily bootstrap new CLI apps written in Python*

## Why

I found this setup very nice, so I'd like to have it available in the easiest way possible for my new Python projects (mostly CLI tools).

## Features

- Project driven by [Python Poetry](https://python-poetry.org/) and [Pyenv](https://github.com/pyenv/pyenv)
- Supports Python from `3.8.x` to `3.9.x` at project level and CI level
- Code style driven by [Flake8](https://flake8.pycqa.org/en/latest/) and [EditorConfig](https://editorconfig.org/)
- Compreehensive Makefile wrapping common target tasks
- **Github Actions** Workflow to validate pushes
- **Github Actions** Workflow to deploy artifacts on [Pypi](https://pypi.org/) every Github release
- Opinionated templates for new issues and pull requests
- Opinionated CHANGELOG file driven by [keepachangelog.com](https://keepachangelog.com)
- Ready to automatically track code coverage with [Codecov](https://codecov.io/)
- [Dependabot](https://docs.github.com/en/github/administering-a-repository/keeping-your-dependencies-updated-automatically) ready (Pip packages and Github Actions)
- [Mergify](https://mergify.io/) ready (automated merges for Dependabot updates)
- [MIT](https://choosealicense.com/licenses/mit) licensed

## How to use

- Get this template

- Run the companion script

```bash
→ ./scaffold <your project name>
```

- Test your changes locally with [Act](https://github.com/nektos/act)

```bash
→ act push
```

- Ensure your Github repository has the native [Dependabot integration enabled](https://docs.github.com/en/github/administering-a-repository/enabling-and-disabling-version-updates)

- Link your Github repository with [Codecov](https://codecov.io/)

- Add you Pypi access token - as `PYPI_TOKEN` - in Github Actions [Secrets Manager](https://docs.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets)

- Set your name and email at `pyproject.toml` (as **author**)
- Set link(s) for your project repository at `pyproject.toml` (**homepage** and **repository**)
- If needed, update/change Python version at `pyproject.toml` and for both YAML files at `.github/workflows`
- If your project is open-source, update the `LICENSE` file

- Profit! 💯

## Author

Coded by Ubiratan Soares (follow me on [Twitter](https://twitter.com/ubiratanfsoares))

## License

```
The MIT License (MIT)

Copyright (c) 2020 Dotanuki Labs

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
