# vim-today

Insert formatted title plugin.

## Usage

```vim
:FormattedTitle Title
```

```vim
------ Title -------
```

## Install

For dein.vim

```vim
call dein#add("Kantouzin/vim-formatted-title")
```

## Configuration

```vim
" character used for decorating title
" default: '-'
let g:formattedTitle_char = "="
" decorated title length
" default: 20
let g:formattedTitle_title_len = 15
```

## License

[MIT License](LICENSE)
