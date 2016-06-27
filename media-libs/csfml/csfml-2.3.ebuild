# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils

DESCRIPTION="C library for the Simple and Fast Multimedia Library (SFML)"
HOMEPAGE="http://www.sfml-dev.org/"
SRC_URI="https://github.com/SFML/CSFML/archive/${PV}.tar.gz -> CSFML-${PV}.tar.gz"

S="${WORKDIR}/CSFML-${PV}"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND=">=media-libs/libsfml-${PV}.0"
RDEPEND="${DEPEND}"
