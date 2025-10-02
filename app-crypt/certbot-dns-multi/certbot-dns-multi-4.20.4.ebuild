# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="DNS plugin for Certbot which integrates with the 100+ DNS providers from the lego ACME client"
HOMEPAGE="https://github.com/alexzorin/certbot-dns-multi https://pypi.org/project/certbot-dns-multi/"
SRC_URI+="
	https://github.com/osirisinferi/vendor/releases/download/${CATEGORY}%2F${P}/${P}-vendor.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-python/setuptools-scm-7.0.5[${PYTHON_USEDEP}]
	dev-python/setuptools-golang[${PYTHON_USEDEP}]
	>=dev-lang/go-1.22.0
	>=app-crypt/certbot-1.12.0[${PYTHON_USEDEP}]
	>=dev-python/josepy-1.1.0[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	rm -r "${S}/tests"
}

python_install() {
	rm -r "${BUILD_DIR}/install$(python_get_sitedir)/${PN//-/_}/_internal/bridge/" || die
	rm -r "${BUILD_DIR}/install$(python_get_sitedir)/"*.h || die
	distutils-r1_python_install
}
