# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools

DESCRIPTION="Light Unix download accelerator"
HOMEPAGE="https://github.com/eribertomota/axel"
SRC_URI="https://github.com/eribertomota/axel/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 hppa ppc ppc64 sparc x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc64-solaris"
IUSE="debug nls +ssl"

RDEPEND="
	nls? ( virtual/libintl )
	ssl? ( dev-libs/openssl )
"
DEPEND="
	nls? ( sys-devel/gettext )
	$RDEPEND
"

src_prepare() {
	eautoreconf

	sed -i -e '/define MAX_REDIR/s/[0-9]+/25/' "src/axel.h"
	eapply_user
}

src_configure() {
	local opts=(
		$(use_with ssl openssl)
	)
	econf $opts
}

pkg_postinst() {
	einfo 'To use axel with portage, try these settings in your make.conf'
	einfo
	einfo ' FETCHCOMMAND='\''axel -a -o "\${DISTDIR}/\${FILE}.axel" "\${URI}" && mv "\${DISTDIR}/\${FILE}.axel" "\${DISTDIR}/\${FILE}"'\'
	einfo ' RESUMECOMMAND="${FETCHCOMMAND}"'
}
