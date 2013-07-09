This is a fork of Brian Turnbull's [vim-cccs][1], which is the Pathogen friendly variation of
Gary Johnson's [cccs.vim][2] for syntax highlighting of Clearcase Config Specs.

Original Differences
====================

* Removed highlighting on config spec pname.
* Added file detection by .cs extension or file content.

Additional Differences
======================

* Improved file type detection.

Installation
============

To install using [Pathogen][3], clone the repo to your bundle directory:

    git clone https://github.com/aswna/vim-cccs.git

To install manually, copy the matching cccs.vim to your .vim/syntax and .vim/ftdetect (or equivalent).

Issues
======

If you are running a Vim older than 7.3.430 and filetype detection fails
(results in a "conf" detection), you may need to apply the patch detailed in [Issue 52][4].
Above issue is observed in newer Vim versions, too. This fork is created to mitigate this problem.

[2]: http://www.spocom.com/users/gjohnson/vim/
[3]: https://github.com/tpope/vim-pathogen
[4]: http://code.google.com/p/vim/issues/detail?id=52
