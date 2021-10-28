# Set-up pyenv
curl https://pyenv.run | bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

#pyenv register-kernel <version_name>

#jupyter kernelspec uninstall <version_name>

# Download wave 0.16
wget https://github.com/h2oai/wave/releases/download/v0.16.0/wave-0.16.0-linux-amd64.tar.gz
tar -xzf wave-0.16.0-linux-amd64.tar.gz

# cd wave-0.16.0-linux-amd64/
# ./waved


git clone https://github.com/h2oai/wave-cluster-shap.git
cd wave-cluster-shap
git checkout import_from_blackbox
git pull origin import_from_blackbox


# Python 3.6.13
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y
pyenv install 3.6.13
pyenv local 3.6.13



# JAVA
sudo apt-get install openjdk-11-jdk -y

make setup
source venv/bin/activate



pip install psycopg2-binary
pip install ipython-sql


git clone https://github.com/bourbakIA/prod-xai-tools.git
cd prod-xai-tools
python -m venv venv
source venv/bin/activate
make develop


git clone https://github.com/Jahrehn/ml-experiments
git clone https://github.com/Jahrehn/script-sharing-temporary.git
