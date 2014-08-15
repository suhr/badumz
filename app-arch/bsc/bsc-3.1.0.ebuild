# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="High perfomance data compression library"
HOMEPAGE="http://libbsc.com"
SRC_URI="https://s3.amazonaws.com/libbsc/${P}-src.zip"

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"


src_prepare() {
	default
	sed -i -e "^/PREFIX =/cPREFIX = ${EPREFIX}"
}
