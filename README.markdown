Vim Haskell Unicode
===================

This is a simple ftplugin that ensures unicode is enabled when the
following line is found in your file:

  > {-# LANGUAGE UnicodeSyntax #-}

This plugin automatically replaces all of the following symbols
with their unicode equivalents:

  > ::, =>, forall, ->, <-

It also creates abbreviations for these symbols, as well as
greek letter names.

Installation
------------

Exract the files into your .vimrc and enjoy!

