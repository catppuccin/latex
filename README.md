<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://www.latex-project.org/">LaTeX</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
  <a href="https://github.com/catppuccin/latex/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/latex?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
  <a href="https://github.com/catppuccin/latex/issues"><img src="https://img.shields.io/github/issues/catppuccin/latex?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
  <a href="https://github.com/catppuccin/latex/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/latex?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## xcolortheme

### Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

### Usage

#### Importing the theme file
1. The [catppuccinPalette](https://www.ctan.org/pkg/catppuccinpalette) package is present on CTAN, but probably not included in your TeX Live installation. Follow the steps below to install it manually:
    - Shortcut: If you set up your local `texmf` you should be able to simply install by executing `make install` (this installs the package locally for the current user)
    - If you don't like installing the package locally for the current user you might also execue `l3build unpack` and move the generated `.sty` file `build/unpacked/catppuccinpalette.sty` to the root directory of your project.
    - If you don't have `l3build` available, you can also download the `catppuccinpalette.sty` file from the [latest GitHub release](https://github.com/catppuccin/latex/releases/latest) and move the file to your project root.
2. Import the package by adding `\usepackage[FLAVOR]{catppuccinpalette}`, replacing `FLAVOR` with the flavor of your choice. i.e. `\usepackage[macchiato]{catppuccinpalette}`. Valid options are: mocha (default), latte, frappe, and macchiato.
    - If you want the package not only to add color definitions, you can also pass `textcolor=true` and/or `pagecolor=true` to the `catppuccinpalette` package.
    - Also note that in the pdf containing the documentation, the available options are described in more detail and also the defined colors are listed and shown.

#### Color Naming Conventions

All [Catppuccin palette colors](https://github.com/catppuccin/catppuccin#-palette), across all flavors, follow the same naming convention. This theme set prefixes all Catppuccin colors with `Ctp`, i.e. `CtpPeach`, or `CtpBlue`. 

## beamercolortheme

### Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/beamer-latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/beamer-frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/beamer-macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/beamer-mocha.webp"/>
</details>

### Usage

#### Importing the theme file
1. The [beamercolorthemecatppuccin](https://www.ctan.org/pkg/beamercolorthemecatppuccin) package is present on CTAN, but probably not (yet) included in your TeX Live installation. Follow the steps below to install it manually:
    - Shortcut: If you set up your local `texmf` you should be able to simply install by executing `make install` (this installs the package locally for the current user)
    - If you don't like installing the package locally for the current user you might also execue `l3build unpack` and move the generated `.sty` file `build/unpacked/beamercolorthemecatppuccin.sty` to the root directory of your project.
    - If you don't have `l3build` available, you can also download the `beamercolorthemecatppuccin.sty` file from the [latest GitHub release](https://github.com/catppuccin/latex/releases/latest) and move the file to your project root.
2. Import the package by adding `\usecolortheme[style=FLAVOR,accent=ACCENT]{catppuccin}`, replacing `FLAVOR` with the flavor of your choice and `ACCENT` with the accent color of your choice (it will get a `Ctp` prepended to it). i.e. `\usecolortheme[style=Latte,accent=Blue]{catppuccin}`. Valid options for `FLAVOR` are: mocha (default), latte, frappe, and macchiato. For `ACCENT` you can use any color defined in the catppuccin palette.
    - Also note that in the pdf containing the documentation, the available options are described in more detail.

## Examples

Please refer to the [examples](https://github.com/catppuccin/latex/tree/main/examples) for full demonstrations, with LaTeX sources and their outputs, on theme usage and code highlighting.

## 💝 Thanks to

- [Lukas](https://github.com/atticus-sullivan)
- [Brandon](https://github.com/walshyb)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>

