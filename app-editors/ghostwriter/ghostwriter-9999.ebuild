# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit qmake-utils git-r3

DESCRIPTION="A cross-platform, aesthetic, distraction-free Markdown editor"
HOMEPAGE="http://wereturtle.github.io/ghostwriter/"
EGIT_REPO_URI="https://github.com/wereturtle/ghostwriter.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="qt5"

LANGS=(en it ja pt ru)
for l in $LANGS; do
    USE+="linguas_${l}"
done

DEPEND="
    app-text/hunspell
    qt5? (
        dev-qt/qtprintsupport:5
        dev-qt/qtwebkitwidgets:5
        dev-qt/qtwidgets:5
        dev-qt/qtconcurrent:5
    )
    !qt5? ( dev-qt/qtwebkit:4 )
"
RDEPEND="${DEPEND}"

src_compile() {
    if use qt5
        then eqmake5 "PREFIX=/usr"
        else eqmake4 "PREFIX=/usr"
    fi

    emake
}

src_install() {
    emake INSTALL_ROOT="${D}" install
}
