<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for LaTeX
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
  <a href="https://github.com/walshyb/catppuccin-latex/stargazers"><img src="https://img.shields.io/github/stars/walshyb/catppuccin-latex?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
  <a href="https://github.com/walshyb/catppuccin-latex/issues"><img src="https://img.shields.io/github/issues/walshyb/catppuccin-latex?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
  <a href="https://github.com/walshyb/catppuccin-latex/contributors"><img src="https://img.shields.io/github/contributors/walshyb/catppuccin-latex?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="https://raw.githubusercontent.com/walshyb/catppuccin-latex/main/assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="https://raw.githubusercontent.com/walshyb/catppuccin-latex/main/assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="https://raw.githubusercontent.com/walshyb/catppuccin-latex/main/assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="https://raw.githubusercontent.com/walshyb/catppuccin-latex/main/assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="https://raw.githubusercontent.com/walshyb/catppuccin-latex/main/assets/mocha.webp"/>
</details>

## Usage

### Importing the theme file

1. Download the respective `.sty` theme file that you'd like to use in your LaTeX document 
2. Add it to the root of your LaTeX document
3. Import the package by adding `\usepackage{catppuccin_THEME}`, replacing `THEME` with the flavor of your chose. i.e. `\usepackage{catppuccin_latte}`

### Copying and Pasting

If you'd like, you could also just copy the color definitions from the your desired `.sty` theme file. Ensure that you still require the `xcolor` package (`\usepackage{xcolor}`) and still bring in the `\pagecolor` and `\color` definitions.

### Color Naming Conventions

All [Catppuccin palette colors](https://github.com/catppuccin/catppuccin#-palette), across all flavors, follow the same naming convention. This theme set prefixes all Catppuccin colors with the flavor name, i.e. `frappePeach`, or `mochaBlue`. This allows for the inclusion of multiple flavors in a single LaTeX document; an example use case would be having code snippets use different syntax highlighting colorschemes.

### Overriding Default Page and Text Colors
If you wish to only utilize the themes for code snippets and not the document itself:
1. If you are importing the package from its file, reset the default colors by adding the following after the import:
```
\pagecolor{white}
\color{black}
```
2. If you copied and pasted `.sty` contents into your preamble, ensure that you omit the `\pagecolor` and `\color` definitions

### Examples

Please refer to the [examples](https://github.com/walshyb/catppuccin-latex/tree/main/examples) for sample demonstrations on theme usage across various document scenarios.


## Inspiration

Inspired by [Dracula's LaTeX theme](https://github.com/dracula/latex).

## 💝 Thanks to

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

