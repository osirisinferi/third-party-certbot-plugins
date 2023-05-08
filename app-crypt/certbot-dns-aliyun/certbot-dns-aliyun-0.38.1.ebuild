# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

MY_PN=${PN//-/_}

DESCRIPTION="Aliyun DNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-aliyun/ https://github.com/tengattack/certbot-dns-aliyun"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"

RDEPEND="
	>=app-crypt/certbot-0.21.1[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/dns-lexicon-3.7.1[${PYTHON_USEDEP}]
	>=dev-python/requests-2.28.0[${PYTHON_USEDEP}]
"

#S="${WORKDIR}/${MY_PN}-${PV}"

src_prepare() {
	default
	cd "${S}"
	sed -i "s/    'mock',//" setup.py
	cd "${MY_PN}"
	rm -r *test.py
}
