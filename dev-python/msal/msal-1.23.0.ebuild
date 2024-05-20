# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Microsoft Authentication Library (MSAL) for Python library"
HOMEPAGE="https://pypi.org/project/msal"

KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SLOT="0"

RDEPEND="
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-1.7.1[${PYTHON_USEDEP}]
	<dev-python/pyjwt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-0.6.0[${PYTHON_USEDEP}]
	<dev-python/cryptography-44.0.0[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"
