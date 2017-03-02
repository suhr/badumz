# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3 cargo-utils

DESCRIPTION="Virtual Midi Janko Keyboard"
HOMEPAGE="https://github.com/suhr/vmjk"
EGIT_REPO_URI="https://github.com/suhr/vmjk.git"

LICENSE="CC0"
SLOT="0"
IUSE=""
KEYWORDS=""

RDEPEND="
    media-libs/csfml
    media-libs/portmidi
"
DEPEND="$RDEPEND"
