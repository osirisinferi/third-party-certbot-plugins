# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

DESCRIPTION="AzureDNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-azure/ https://github.com/terrycain/certbot-dns-azure"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-1.1.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-0.29.0[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	>=dev-python/setuptools-39.0.1[${PYTHON_USEDEP}]
	>=dev-python/azure-identity-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/azure-mgmt-dns-8.0.0[${PYTHON_USEDEP}]
"
