# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="Hetzner DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-hetzner/ https://github.com/ctrlaltcoop/certbot-dns-hetzner"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-2.0.0[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/dns-lexicon-3.11.6[${PYTHON_USEDEP}]
"
