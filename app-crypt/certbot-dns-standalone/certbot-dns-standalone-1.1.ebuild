# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="Standalone DNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-standalone/ https://github.com/siilike/certbot-dns-standalone"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

PATCHES="${FILESDIR}/${PN}-remove-mock-dep.patch"

RDEPEND="
	>=app-crypt/certbot-2.1.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-0.21.1[${PYTHON_USEDEP}]
	>=dev-python/dnslib-0.9.0[${PYTHON_USEDEP}]
"

src_prepare() {
	rm "${WORKDIR}/${P}/${PN//-/_}/dns_standalone_test.py"
	default
}
