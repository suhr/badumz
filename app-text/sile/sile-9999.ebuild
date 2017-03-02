# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
inherit autotools git-r3

DESCRIPTION="SILE typesetting system"
HOMEPAGE="http://www.sile-typesetter.org/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/simoncozens/sile.git"

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS=""

RDEPEND="
	media-libs/harfbuzz
	dev-lua/lpeg
	dev-lua/luaexpat
	dev-lua/luafilesystem
"
DEPEND="$RDEPEND"

src_prepare() {
	eautoreconf
}
