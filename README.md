## Installation
Just copy `mpi.vim` into your `plugin` directory.

## Why?
- I like vim-devicons. But it cares too much about integrating with other plugins. Its code is huge for such a simple task.(getting file type icons)
- I like to manipulate and discover things and see what's going on under the hood(And i encourage you, too). So, instead of just using a huge plugin, install a minimal alternative and change it according to your needs.
- [KISS](https://en.wikipedia.org/wiki/KISS_principle)

## Costumization
You can add [unicode emojies](https://en.wikipedia.org/wiki/Template:Emoji_(Unicode_block)) like this:

```
let g:mpi#exact_matches = {
    ...
    \ '.zshrc'                           : '🌍',
    \ '.zsh_history'                     : "\<Char-0x23f0>",
    \ '.fehbg'                           : '🐈',
    ...
\}
```

## License
![License](https://img.shields.io/github/license/LinArcX/mpi.svg)
