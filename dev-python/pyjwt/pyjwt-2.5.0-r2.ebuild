# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1 optfeature pypi

MY_PN="PyJWT"
DESCRIPTION="JSON Web Token implementation in Python"
HOMEPAGE="
	https://github.com/jpadilla/pyjwt/
	https://pypi.org/project/PyJWT/
"
SRC_URI=$(pypi_sdist_url --no-normalize "${MY_PN}" "${PV}")
S=${WORKDIR}/${MY_PN}-${PV}

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

BDEPEND="
	test? (
		>=dev-python/cryptography-3.3.1[${PYTHON_USEDEP}]
	)
"

PATCHES=(
	"${FILESDIR}/${P}-remove-types-cryptography.patch"
)

distutils_enable_tests pytest

pkg_postinst() {
	optfeature "cryptography" dev-python/cryptography
}
