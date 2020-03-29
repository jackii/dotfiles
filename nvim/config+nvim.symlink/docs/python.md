# How to install python provider for neovim?

## For MacOS

1. Use [pyenv](https://github.com/pyenv/pyenv) to manage python versions. Install `pyenv`
```
brew install pyenv
```
To see list of python that can be installed,
```
pyenv install --list
```

To upgrade `pyenv` to install latest version of python,
```
brew update && brew upgrade pyenv
```

2. Use `pyenv` to install python

```
pyenv install 3.8.2
```

3. Create a virtual environment specifically for neovim (`neovim3` means it's for python3)

```
pyenv virtualenv 3.8.2 neovim3
```

4. Activate the virtual environment

```
pyenv activate neovim3
```

5. Install neovim python package

```
pip install neovim
```

Check the python path

```
pyenv which python
```

6. Put these lines to `.vimrc`

```
" Enable python3
" https://github.com/tweekmonster/nvim-python-doctor/wiki/Advanced:-Using-pyenv#tips-for-using-pyenv
let g:python3_host_prog = '/usr/local/var/pyenv/versions/neovim3/bin/python'
```







