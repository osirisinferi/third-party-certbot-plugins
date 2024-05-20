# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="AzureDNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-azure/ https://github.com/terrycain/certbot-dns-azure"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-2.0.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/azure-identity-1.13.0[${PYTHON_USEDEP}]
	>=dev-python/azure-mgmt-dns-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/azure-core-1.25.0[${PYTHON_USEDEP}]
"
