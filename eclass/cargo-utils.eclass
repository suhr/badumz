# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

case ${EAPI} in
    5) : ;;
    6) : ;;
    *) die "EAPI=${EAPI:-0} is not supported" ;;
esac

EXPORT_FUNCTIONS src_configure src_compile src_install

CARGO_HOME="${WORKDIR}/cargo_home"

## TODO: convert it to `unpack` phase
cargo-utils_src_configure() {
    mkdir -p "${CARGO_HOME}" || die

    ebegin "Running cargo fetch"
    cargo fetch --manifest-path "${S}/Cargo.toml" || die
}

cargo-utils_src_compile() {
    ebegin "Running cargo build"
    cargo build --release || die
}

cargo-utils_src_install() {
    ebegin "Running cargo install"
    cargo install --root="${D}/usr" || die
}
