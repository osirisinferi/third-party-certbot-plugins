# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..10} )

DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Standalone DNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-standalone/ https://github.com/siilike/certbot-dns-standalone"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

PATCHES="${FILESDIR}/${PN}-remove-mock-dep.patch"

RDEPEND="
	>=app-crypt/certbot-2.1.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-0.21.1[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/dnslib-0.9.0[${PYTHON_USEDEP}]
"

src_prepare() {
	rm "${WORKDIR}/${P}/${PN//-/_}/dns_standalone_test.py"
	default
}
