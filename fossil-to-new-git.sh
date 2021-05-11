#!/bin/bash
#ref: https://fossil-scm.org/home/doc/trunk/www/inout.wiki
#auth: Jianhong <yin-jianhong@163.com>

fossilUrl=$1
repo=$2
branch=$3

repofile=${repo}.db
repodir=${repo}.fossil
gitdir=${repo}.git

[[ $# < 3 ]] && {
	echo "Usage: $0 <fossil-url> <repo-name> <branch-name>" >&2
	echo " e.g: $0 https://wapp.tcl.tk wapp trunk" >&2
	exit 1
}

#download fossil dbfile (sqlite)
fossil clone $fossilUrl ${repofile}

#extract dbfile
mkdir ${repodir}
(cd $repodir && fossil open ../$repofile)

#export to git repo
mkdir ${gitdir}
(
cd $gitdir && git init .
fossil export --git --export-marks ../$repodir/fossil.marks ../$repofile |
	git fast-import --export-marks=../$repodir/git.marks
git checkout $branch
)
