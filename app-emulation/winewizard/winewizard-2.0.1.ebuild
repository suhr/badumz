# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit qmake-utils

DESCRIPTION="Wine Wizard is a new GUI for Wine written in Qt"
HOMEPAGE="http://wwizard.net/"
SRC_URI="https://github.com/LLIAKAJL/WineWizard/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/WineWizard-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
    dev-qt/qtgui:5
    dev-qt/qtnetwork:5
    dev-qt/qtwidgets:5

    app-arch/cabextract
    app-arch/unzip
"
RDEPEND="${DEPEND}"

src_compile() {
    eqmake5 "PREFIX=/usr"

    emake
}

src_install() {
    emake INSTALL_ROOT="${D}" install
}
