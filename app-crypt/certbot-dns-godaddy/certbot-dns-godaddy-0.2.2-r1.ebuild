# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

DESCRIPTION="godaddy DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-godaddy/ https://github.com/miigotu/certbot-dns-godaddy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-0.31.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-0.31.0[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-5.4.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.4[${PYTHON_USEDEP}]
	!>=dev-python/urllib3-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/dns-lexicon-3.2.3[${PYTHON_USEDEP}]
"
