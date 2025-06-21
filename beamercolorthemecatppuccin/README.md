<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://ctan.org/pkg/beamer">LaTeX Beamer</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/beamercolortheme/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/beamercolortheme?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/beamercolortheme/issues"><img src="https://img.shields.io/github/issues/catppuccin/beamercolortheme?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/beamercolortheme/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/beamercolortheme?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/beamercolortheme/main/assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="https://raw.githubusercontent.com/catppuccin/beamercolortheme/main/assets/Latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="https://raw.githubusercontent.com/catppuccin/beamercolortheme/main/assets/Frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="https://raw.githubusercontent.com/catppuccin/beamercolortheme/main/assets/Macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="https://raw.githubusercontent.com/catppuccin/beamercolortheme/main/assets/Mocha.webp"/>
</details>

## Usage

1. Download the flavor of your choice.
2. Open the app and go to **Preferences** > **Appearance** > **Import theme**.
3. Select the downloaded flavor file.

## Usage

### Importing the theme file
This package is not on CTAN yet (but it will be in neat future), so you need to install it manually

1. Installing
    - Shortcut: If you set up your local `texmf` you should be able to simply install by executing `make install` (this installs the package locally for the current user)
    - If you don't like installing the package locally for the current user you might also execue `l3build unpack` and move the generated `.sty` file `build/unpacked/beamercolorthemecatppuccin.sty` to the root directory of your project.
    - If you don't have `l3build` available, you can also download the `beamercolorthemecatppuccin.sty` file from the [latest GitHub release](https://github.com/catppuccin/beamercolortheme/releases/latest) and move the file to your project root.
2. Tell beamer to use this colortheme: `\usecolortheme[style=FLAVOR,accent=COLOR]{catppuccin}`
   - replace `FLAVOR` with the flavor of your choice. i.e.
     `\usecolortheme[style=Macchiato]{catppuccin}`. Valid options are:
     mocha (default), latte, frappe, and macchiato.
   - replace `COLOR` with any color (probably one from the catppuccinpalette)
     to color accented elements i.e. 
     `\usecolortheme[accent=Sky]{catppuccin}`.
    - Also note that in the pdf containing the documentation, the available
      options are described in more detail.

### Examples

Please refer to the [examples](https://github.com/catppuccin/beamercolortheme/tree/main/examples) for full demonstrations, with LaTeX sources and their outputs with various beamerthemes, accent colors and flavors.

Probably easier to look at is visiting the [theme gallery](https://catppuccin.github.io/beamercolortheme/) which is almost the same like the [theme gallery for the built-in themes](https://deic.uab.cat/~iblanes/beamer_gallery/) but adjusted for being able to browse theme, flavor and color.


## 💝 Thanks to
- [Lukas](https://github.com/atticus-sullivan)

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
