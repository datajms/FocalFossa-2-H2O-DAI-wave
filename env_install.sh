sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
git -y

# Set-up pyenv
curl https://pyenv.run | bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

#pyenv register-kernel <version_name>

#jupyter kernelspec uninstall <version_name>

# Python 3.8.4
pyenv install 3.8.4
pyenv global 3.8.4

git clone https://github.com/Jahrehn/ml-experiments.git
git clone https://github.com/Jahrehn/script-sharing-temporary.git
