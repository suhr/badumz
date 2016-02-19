# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"
inherit eutils git-2 qmake-utils

DESCRIPTION="A free and open source, cross-platform, libmpv based multimedia player"
HOMEPAGE="http://bakamplayer.u8sand.net/"
SRC_URI=""
EGIT_REPO_URI="git://github.com/u8sand/Baka-MPlayer.git"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS=""

LANGS="it ko pt ru zh_CN"
for X in ${LANGS} ; do
    IUSE="${IUSE} linguas_${X}"
done

DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtdeclarative:5
	dev-qt/qtsvg:5
	dev-qt/qtx11extras:5
	media-video/mpv[libmpv]
"
RDEPEND="${DEPEND}"

src_configure() {
	TRANSLATIONS=()
	for l in ${LINGUAS}; do
		TRANSLATIONS+=("TRANSLATIONS+=translations/baka-mplayer_$l.ts")
	done
	QT_SELECT=qt5 eqmake5 src/Baka-MPlayer.pro CONFIG+=release \
		CONFIG+=install_translations "${TRANSLATIONS[@]}"
}

src_install() {
	emake INSTALL_ROOT="${D}" DESTDIR="${D}" install
}
