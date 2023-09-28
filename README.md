# Neovim Config

-   <img src="\pictures\nvim1.png"/>

    <img src="\pictures\nvim2.png"/>

    <img src="\pictures\mason.png"/>

-   This is requirement
    -   Require NerdFont
    -   Nodejs
    -   Npm
    -   Pip

### For window OS

-   If errors with fzf-native just install with choco or winget

```
choco install mingw -- optional
choco install make
```

-   In the directory `\AppData\Local\nvim-data\site\pack\packer\start\telescope-fzf-native.nvim` run

```
make
```

---

# Keymap NeoVim

-   **_Surround_** ("tpope/vim-surround")
    -   **_ysw_** + _"symbol"_ => **_surround_** a word
    -   **_ds_** + _"symbol"_ => **_delete surround_**
    -   **_cs_** + _"before symbol"_ + _"after symbol"_ => **_change surround_**

---

-   **_Copy & Replace_** ("inkarkat/vim-ReplaceWithRegister")
    -   **_yw_** - _copy text 1_ **`then`** **_grw_** - _replace text 1 with others_

---

-   **_Comment_** ("numToStr/Comment.nvim")
    -   **_gcc_** => do/undo **_comment_** in **_one line_**
    -   **_gc_** + _number of lines_ + **_j/k_** => do/undo **_comment_** of **_many lines_**
