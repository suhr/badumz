# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
inherit eutils

DESCRIPTION="High perfomance data compression library"
HOMEPAGE="http://libbsc.com"
SRC_URI="https://s3.amazonaws.com/libbsc/${P}-src.zip"

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"


src_unpack() {
	mkdir "${P}" ; cd "${P}"
	unpack "${A}"
}

src_configure() {
	sed -i -e "/^PREFIX =/cPREFIX = ${EPREFIX}/usr" makefile
}

src_install() {
	echo "${D}"
	emake PREFIX="${ED}/usr" install
}
