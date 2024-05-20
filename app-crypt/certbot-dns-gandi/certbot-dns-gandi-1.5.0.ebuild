# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

MY_PN="certbot-plugin-gandi"

inherit distutils-r1

DESCRIPTION="Gandi LiveDNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-plugin-gandi/ https://github.com/obynio/certbot-plugin-gandi"
SRC_URI="https://github.com/obynio/${MY_PN}/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# No tests available
RESTRICT="test"

RDEPEND="
	>=app-crypt/certbot-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.4.2[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_PN}-${PV}"

src_prepare() {
	default
	cd "${S}"
	sed -i "s/        'zope.interface',//" setup.py
}
