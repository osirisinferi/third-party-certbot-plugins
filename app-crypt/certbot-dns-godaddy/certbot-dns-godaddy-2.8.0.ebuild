# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="godaddy DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-godaddy/ https://github.com/miigotu/certbot-dns-godaddy"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/dns-lexicon-3.14.0[${PYTHON_USEDEP}]
"
