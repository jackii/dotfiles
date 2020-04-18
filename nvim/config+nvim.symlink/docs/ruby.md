# How to install ruby provider for neovim?

## For MacOS

1. Use [rbenv](https://github.com/rbenv/rbenv) to manage versions of ruby. Follow the [installation steps](https://github.com/rbenv/rbenv#homebrew-on-macos) 

```
brew install rbenv
rbenv init
```

To upgrade to latest and latest list of rubies,

```
brew update && brew upgrade rbenv ruby-build
```

To see list of rubies,

```
rbenv install --list
```

2. Use `rbenv` to install ruby

```
rbenv install 2.7.0
```

3. Install `rbenv-gemset` to manage gemset for individual project

```
brew install rbenv-gemset
```

4. Create a gemset specifically for neovim

```
rbenv gemset create 2.7.0 neovim
```

