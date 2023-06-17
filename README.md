# Neovim Config

- This is requirement
  - Require NerdFont
  - Nodejs
  - Npm
  - Pip

### For window OS

- If errors with fzf-native just install with choco or winget

```
choco install mingw -- optional
choco install make
```

- In the directory `\AppData\Local\nvim-data\site\pack\packer\start\telescope-fzf-native.nvim` run

```
make
```
***
# Keymap NeoVim

- ***Surround*** ("tpope/vim-surround")
	- ***ysw*** + *"symbol"*   =>  ***surround*** a word
	- ***ds*** + *"symbol"*  => ***delete surround***
	- ***cs*** + *"before symbol"* + *"after symbol"* => ***change surround*** 
***
- ***Copy & Replace***  ("inkarkat/vim-ReplaceWithRegister")
	-  ***yw*** - *copy text 1*  **`then`** ***grw*** - *replace text 1 with others*
***
- ***Comment*** ("numToStr/Comment.nvim")
	- ***gcc***  => do/undo ***comment*** in ***one line***
	- ***gc*** + *number of lines* + ***j/k***  => do/undo ***comment*** of ***many lines*** 
