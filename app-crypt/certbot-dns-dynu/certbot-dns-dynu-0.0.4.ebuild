# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Dynu DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-dynu/ https://github.com/bikram990/certbot-dns-dynu"
SRC_URI="https://github.com/bikram990/${PN}/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-2.0.0[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/dnspython[${PYTHON_USEDEP}]
	>=dev-python/dns-lexicon-3.11.7[${PYTHON_USEDEP}]
"
