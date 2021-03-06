# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=("python2_7")
CMAKE_BUILD_TYPE="Debug"  # see https://github.com/mozilla/rr/issues/1180

inherit python-any-r1 cmake-utils git-r3

DESCRIPTION="Mozilla's record-and-replay debugger"
HOMEPAGE="http://rr-project.org/"
EGIT_REPO_URI="https://github.com/mozilla/rr.git"

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS=""

RDEPEND="dev-python/pexpect"
DEPEND="$RDEPEND"
