# VimRename

`vim_rename` allows you to use the power of your preferite editor to mass rename files.

## Installation

Install like a normal gem with

    $ gem install vim_rename

## Usage

```
Usage: vim_rename [options]

    -s, --split                      Split vim view in 2 columns, target file names and old names for reference
    -c, --confirm                    Asks for confirmation, showing the changes, before doing any action
    -C, --confirm-each               Asks for confirmation before EACH action
    -d, --diff                       Use vimdiff
    -e, --skip-extensions            Skip extension from being displayed
    -v, --verbose                    Increase verbosity
```

## Contributing

1. Fork it ( https://github.com/carlesso/vim\_rename/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
