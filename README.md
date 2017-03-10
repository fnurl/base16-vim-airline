# Repo contents

- vim-airline template for [Base 16](https://github.com/chriskempson/base16)
- `fix-dashes.sh` script as workaround since replacements can't be made
  using `mustache`.

$ Instructions

Clone the repo using

``` bash
git clone git@github.com:fnurl/base16-vim-airline.git
```

If you want to use the template for building using
[base16-builder-php](https://github.com/chriskempson/base16-builder-php),
clone it the repo into `base16-builder-php/templates/vim-airline`. Then run
`php builder.php` from the `base16-builder-php` directory.

## Using themes with vim-airline

Either copy the themes from the `themes` directory into your
`~/.vim/autoload/airline/themes` directory, or make
`~/.vim/autoload/airline/themes` a symlink to the `themes` dir in the repo
if you don't have any other themes.


# TODO

- make themes installable using e.g. vundle

