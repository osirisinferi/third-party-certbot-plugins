# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

MY_PN=${PN//-/_}

DESCRIPTION="Aliyun DNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-aliyun/ https://github.com/tengattack/certbot-dns-aliyun"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"

RDEPEND="
	>=app-crypt/certbot-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.28.0[${PYTHON_USEDEP}]
"

src_prepare() {
	default
	cd "${S}"
	sed -i "s/    'mock',//" setup.py
	cd "${MY_PN}"
	rm -r *test.py
}
