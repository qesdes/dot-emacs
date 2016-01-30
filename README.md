# dot-emacs
# KYS .emacs - Test only

This is my dot emacs repository with GitHub test.

## Table of Contents

* [Usage](#usage)
* [Contributing](#contributing)
* [Recipe Format](#recipe-format)
* [Build Scripts](#build-scripts)
* [API](#api)
* [About](#about)
* [Stable Packages](#stable-packages)


## Usage
download and use.
(prin1 emacs-version)
"24.5.1"

```lisp
(require 'package)
(message "not included")
```
package which we provide.


## Contributing


### Expediting Recipe Reviews

just test

* level-a 1

    * level-b

* level-a 2
  or pressing `C-c C-c` in the recipe buffer.


### Testing

Let `<NAME>` include

1. test

- `:url`
specifies the URL of the version control repository. *required for
the `git`, `bzr`, `hg`, `darcs`, `svn` and `cvs` fetchers.*

- `:repo` specifies the github repository and is of the form
`github-user/repo-name`. *required for the `github` fetcher*.

- `:commit`
specifies the commit of the git repo to checkout. The value
will be passed to `git reset` in a repo where `upstream` is the
original repository. Can therefore be either a sha, if pointing at a
specific commit, or a full ref prefixed with "origin/". Only used by
the `git` and `github` fetchers.

[git]: http://git-scm.com/
[github]: https://github.com/
[bzr]: http://bazaar.canonical.com/en/
[hg]: http://mercurial.selenic.com/
[svn]: http://subversion.apache.org/
[cvs]: http://www.nongnu.org/cvs/
[darcs]: http://darcs.net/
[emacswiki]: http://www.emacswiki.org/


### Example: Single File Repository


```
package-YYYYMMDD
|-- snippets
|   |-- html-mode
|   |   |-- div
|   |   `-- html
|   `-- python-mode
|       |-- for
|       `-- main
`-- package.el
```

which generates the package,

```
pony-mode-YYYYMMDD
|-- pony-mode-pkg.el
|-- pony-mode.el
|-- pony-tpl.el
`-- snippets
    |-- html-mode
    |   |-- bl
    |   |-- ex
    |   |-- for
    |   |-- if
    |   |-- loa
    |   |-- sup
    |   |-- testc
    |   `-- {{
    `-- python-mode
        |-- auth-view
        |-- bn
        |-- model
        |-- modelform
        |-- render-to
        |-- testc
        `-- view
```


## Build Scripts

Building MELPA is all based around using the `Makefile` included in
the root repository directory. Described below are the actions that
accepted by the `Makefile`.

* `all` -- Builds all packages under the `recipes/` directory and compiles the `index.html` file for the [melpa] website.

* `recipes/<NAME>` -- Build individual recipe `<NAME>`. Built packages
are put in the `packages/` folder with version corresponding to the
newest HEAD revision available; given according to the `%Y%m%d`
format.

## Configuration

Packages end up in the `packages/` directory by default.


## About


## Stable Packages

1. Hosted using *git*.
2. Tag names are version strings compatible parseable by the `version-to-list` function.

### Notes

*Versions for packages server.*

