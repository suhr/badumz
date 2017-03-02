# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
inherit git-r3 cmake-utils

DESCRIPTION="Linux port of FAR v2"
HOMEPAGE="https://github.com/elfmz/far2l"
SRC_URI=""
EGIT_REPO_URI="https://github.com/elfmz/far2l.git"

LICENSE="GPLv2"
SLOT="0"
IUSE=""
KEYWORDS=""

RDEPEND="
	dev-libs/glib
	x11-libs/wxGTK:3.0[X]
"
DEPEND="$RDEPEND"

src_prepare() {
	eautoreconf
}
