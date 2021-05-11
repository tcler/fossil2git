#!/bin/bash
#ref: https://fossil-scm.org/home/doc/trunk/www/inout.wiki
#auth: Jianhong <yin-jianhong@163.com>

fossdir=$1
gitdir=$2

[[ $# < 2 ]] && {
	echo "Usage: $0 <fossil-dir> <git-dir>" >&2
	echo " e.g: $0 wapp.fossil wapp.git" >&2
	exit 1
}

#fossil pull
(cd $fossdir && fossil pull)

#export updates to git
(
cd $gitdir
fossmf=../$fossdir/fossil.marks
gitmf=../$fossdir/git.marks
fossil export --git --import-marks $fossmf --export-marks $fossmf ../$fossdir |
	git fast-import --import-marks=$gitmf --export-marks=$gitmf
)
