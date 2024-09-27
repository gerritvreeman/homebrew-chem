# Homebrew-Chem

A tap for Homebrew providing some useful formula and casks for scientific work.

Tap this repo using the following command.

```sh
brew tap gerritvreeman/homebrew-chem
```

Install casks and formulae using the following command.

```sh
brew install --cask cask-name
brew install formula
```

## Available Casks

- [CrystalExplorer21](https://crystalexplorer.net) (`cyrstalexplorer`)
- [Olex2](https://www.olexsys.org/olex2/) (`olex2`)
- [MestReNova](https://mestrelab.com) (`mnova`)

### Colorpickers

To ensure the color palettes are installed to the correct location to show up in the colorpicker, add `--colorpickerdir=${HOME}/Library/Colors` when installing (e.g., `brew install --cask cask-name --colorpickerdir=${HOME}/Library/Colors`).

- [Solarized](https://ethanschoonover.com/solarized/) (`colorpicker-solarized`)
- [UMN](https://github.com/gerritvreeman/umn-colors) (`colorpicker-umn`)
- [NuCo](https://github.com/gerritvreeman/nuco-colors) (`colorpicker-nuco`)

## Available Formulae

- [Platon](http://www.platonsoft.nl/platon/) (`platon`)
- [SHELX](http://shelx.uni-goettingen.de) (`shelx`)
  Note: to install SHELX, you must register at the [SHELX site](http://shelx.uni-goettingen.de/register.php) (free for academics) and export the username and password `HOMEBREW_SHELX_USER` and `HOMEBREW_SHELX_PW` environment variables before running `brew install shelx`
