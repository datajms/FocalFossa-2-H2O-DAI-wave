# Managing python projects on MacOs


## 1. Install pyenv to manage/install the right python version

Prerequisite:
- Homebrew should be [installed](https://brew.sh/).

### 1.1. Install pyenv

Steps to install and configure pyenv (inspired from [there](https://medium.com/@hanpark/setting-up-python-virtual-development-environment-using-pyenv-and-pyenv-virtualenv-on-mac-4458de2b1f3d)):
- Open terminal
- `brew install pyenv`
- Add one instruction at the end of your `~/.bash_profile` and `~/.zshrc` (depending on terminal, one or the other will be used ; if file doesn't exist, create it). The instruction to add is `eval "$(pyenv init -)"`

### 1.2. Install a specific version of python

- Close terminal and open new terminal
- `pyenv install 3.9.7` (or any version you want: to check all existing versions that you can install -> `pyenv install -l`)
- `pyenv versions` -> to check all python versions installed on local machine
- `pyenv global 3.9.7` -> to make python 3.9.7 by default, in all folders
- you can now check the current python version with `python -V`

## 2. Set-up a python virtual environment for a project

Let's assume that the project is hosted here: `~/my_project/`

### 2.1. Choose the python version with pyenv (let's say 3.8.7)
- Open terminal
- `cd ~/my_project/`
- (if 3.8.7 is not installed yet, run `pyenv install 3.8.7`)
- Choose a python version for current folder -> `pyenv local 3.8.7`
- You can check that it's working: `python -V` -> this should return 3.8.7

### 2.2. Create and activate a virtual environment and pip-install your packages
- Start by defining which packages to install in the file `requirements.txt`
- Create virtual environment and install package in requirements.txt -> `make setup`

> Explanations: *make setup* will automatically run *python -m venv venv* (which initialize a new virtual environment called *venv*) and then *pip install -r requirements.txt* (which installs all packages listed in *requirements.txt*). You can check the content of *Makefile* to see the instructions.

- Activate the environment: `source venv/bin/activate`

You can now check with `which python` that the python library which is called is a project-specific version, stored in `~/my_project/venv/`. It will not interfere with other projects.

- Deactivate the environment, when you quit/switch project: `deactivate`

### 2.3. Useful instructions when developing

Always make sure your virtual environment is activated (*source venv/bin/activate*).

When modifying your project, you will probably need to install new packages (for example, the last version of *selenium*).
Then, you can run `pip install selenium`, to install this packages 'on-the-fly'.
Then, don't forget to add in `requirements.txt`, the package with its version (`selenium==3.141.0`).
At any moment, you can check the current package installed with `pip freeze`.

If you are not sure that you have correctly updated the packages listed in *requirements.txt*, you can delete current environment and recreate it:
- `deactivate`
- `make clean`
- `make setup`
- `source venv/bin/activate`
