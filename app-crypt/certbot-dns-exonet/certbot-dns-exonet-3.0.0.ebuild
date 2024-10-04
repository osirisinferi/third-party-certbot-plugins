# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="Exonet DNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-exonet/ https://github.com/exonet/certbot-dns-exonet"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	app-crypt/certbot[${PYTHON_USEDEP}]
	app-crypt/acme[${PYTHON_USEDEP}]
	dev-python/tldextract[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/exonetapi-3.0.3[${PYTHON_USEDEP}]
"
