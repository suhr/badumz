# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"
PYTHON_COMPAT=("python2_7")

inherit python-any-r1 cmake-utils git-r3

DESCRIPTION="Mozilla's record-and-replay debugger"
HOMEPAGE="http://rr-project.org/"
EGIT_REPO_URI="https://github.com/mozilla/rr.git"

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS=""

RDEPEND="dev-python/pexpect"
DEPEND=""
