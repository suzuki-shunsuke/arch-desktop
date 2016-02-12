# arch-desktop

## ansibleを使えるようにする

* ansible実行ユーザの作成
* pyenvのインストール
* ansibleのインストール

```
useradd -m shunsuke -G wheel
passwd shunsuke
exit
```

実行ユーザでログイン

```
sudo pacman -S git python2
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
mkdir -p ~/.ssh/suzuki-shunsuke
ssh-keygen -t rsa
# GitLab, GitHubに公開鍵を登録
git clone git@gitlab.com/suzuki-shunsuke/arch-desktop.git ~/.ansible
pyenv install 2.7.10
pip install --upgrade pip
cd ~/.ansible
pip install virtualenv
virtualenv env
source env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```
