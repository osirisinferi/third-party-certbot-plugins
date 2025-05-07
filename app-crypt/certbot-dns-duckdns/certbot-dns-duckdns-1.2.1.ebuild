# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

MY_PN=${PN//-/_}

DESCRIPTION="DuckDNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-duckdns/ https://github.com/infinityofspace/certbot_dns_duckdns"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"

PATCHES="${FILESDIR}/${PN}-remove-Readme.patch"

RDEPEND="
	>=app-crypt/certbot-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/dnspython-2.2.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.28.0[${PYTHON_USEDEP}]
"

src_prepare() {
	default
	cd "${S}"
	rm -r tests
}
