# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Porkbun DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-porkbun/ https://github.com/infinityofspace/certbot_dns_porkbun"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/pkb-client-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/dnspython-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/tldextract-5.1.2[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}/${PN}-cleanup-setup.py.patch"
)

src_prepare() {
	default
	rm -r "${S}/tests"
}
