# CV

This repository contains my curriculum vitae written in [Typst](https://typst.app/).

## Building the CV

### Locally

To build the CV locally, you need to have Typst installed. You can install it by following the instructions on the [official website](https://github.com/typst/typst#installation).

Once installed, run:

```bash
typst compile cv.typ cv.pdf
```

### GitHub Actions

The CV is automatically built on every push to the `main` branch and on pull requests. The workflow:

- Uses the latest version of Typst
- Compiles `cv.typ` to `cv.pdf`
- Uploads the generated PDF as an artifact

You can download the built CV from the workflow run artifacts in the [Actions tab](../../actions).

## Workflow Badge

![Build CV](https://github.com/LorenzoFerri/CV/workflows/Build%20CV/badge.svg)
