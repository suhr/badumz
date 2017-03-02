# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
inherit eutils git-2

DESCRIPTION="A simple ncurses text editor"
HOMEPAGE="http://tools.suckless.org/sandy"
SRC_URI=""
EGIT_REPO_URI="git://git.suckless.org/sandy"

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS=""

DEPEND="sys-libs/ncurses"
RDEPEND="${DEPEND}"

src_configure() {
	sed -i -e "/^PREFIX =/cPREFIX = ${EPREFIX}/usr" config.mk
	sed -i -e "/#define VIM_BINDINGS/s/1/0/" config.def.h
}
