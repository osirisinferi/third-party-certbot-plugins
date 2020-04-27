# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

DISTUTILS_USE_SETUPTOOLS=rdepend

SRC_URI="https://github.com/Shm013/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

inherit distutils-r1

DESCRIPTION="Freenom DNS Authenticator plugin for Certbot (Let's Encrypt Client)"
HOMEPAGE="https://github.com/Shm013/certbot-dns-freenom"

LICENSE="Apache-2.0"
SLOT="0"

RDEPEND="
	>=app-crypt/certbot-1.17.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-1.17.0[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	>=dev-python/freenom-0.0.2[${PYTHON_USEDEP}]
"
