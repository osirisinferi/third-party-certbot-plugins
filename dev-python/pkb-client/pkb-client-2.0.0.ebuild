# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="Python client for the Porkbun API"
HOMEPAGE="https://pypi.org/project/pkb-client/ https://github.com/infinityofspace/pkb_client"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	>=dev-python/dnspython-2.6.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}/${PN}-cleanup-setup.py.patch"
)

src_prepare() {
	default
	rm -r "${S}/tests"
}
