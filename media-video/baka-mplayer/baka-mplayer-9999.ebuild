# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
inherit eutils git-2 cmake-utils

DESCRIPTION="A free and open source, cross-platform, libmpv based multimedia player"
HOMEPAGE="http://bakamplayer.u8sand.net/"
SRC_URI=""
EGIT_REPO_URI="git://github.com/u8sand/Baka-MPlayer.git"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS=""

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

src_install() {
	dobin "${CMAKE_BUILD_DIR}/baka-mplayer"
	doicon -s scalable "${S}/arch/baka-mplayer.svg"
	domenu "${S}/arch/baka-mplayer.desktop"
}