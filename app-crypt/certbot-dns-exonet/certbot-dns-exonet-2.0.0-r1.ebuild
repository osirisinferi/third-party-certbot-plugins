# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Exonet DNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-exonet/ https://github.com/exonet/certbot-dns-exonet"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	app-crypt/certbot[${PYTHON_USEDEP}]
	app-crypt/acme[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	dev-python/tldextract[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/exonetapi-3.0.3[${PYTHON_USEDEP}]
"
