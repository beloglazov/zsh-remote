#!/bin/sh

modes='ace-jump-mode auto-complete clojure-mode fci flymake-cursor haskell-mode ido-ubiquitous magit markdown-mode php-mode popup-el pylookup smex yasnippet'

for mode in $modes; do
    cd $mode
    git pull origin master
    cd ../
done
