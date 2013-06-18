#!/bin/bash
# ------------------------------------------------------------------------------
# Vagrant - Virtualized Development 
# Copyright(c) pgRouting Contributors
#
# Prepare packaging
# ------------------------------------------------------------------------------

echo "DEBEMAIL=mail@example.com" > ~/.bash_aliases
echo "DEBFULLNAME='First Last'" >> ~/.bash_aliases

git config --global user.name "First Last"
git config --global user.email "mail@example.com"
git config --global core.editor vim
git config --global color.ui true
