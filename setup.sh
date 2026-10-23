#!/bin/bash

# Plugin list
asdf plugin add age https://github.com/threkk/asdf-age.git
asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck.git
asdf plugin add sops https://github.com/feniix/asdf-sops.git
asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin-add python

asdf install

# Install python tools
# Older pips trust the compromised eMudhra CAs: upgrade them from a hash-pinned wheel before fetching anything else.
pip_version=$(pip --version | cut -d' ' -f2)
if [ "$(printf '%s\n' 26.2.2 "$pip_version" | sort -V | head -n1)" != 26.2.2 ]; then
  pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
fi
pip install -r requirements.txt
