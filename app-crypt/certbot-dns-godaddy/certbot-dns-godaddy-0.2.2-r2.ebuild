# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1 pypi

DESCRIPTION="godaddy DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-godaddy/ https://github.com/miigotu/certbot-dns-godaddy"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-0.31.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-0.31.0[${PYTHON_USEDEP}]
	>=dev-python/dns-lexicon-3.2.3[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}/${P}-remove-zope.patch"
	"${FILESDIR}/${P}-remove-urllib-dep.patch"
)
