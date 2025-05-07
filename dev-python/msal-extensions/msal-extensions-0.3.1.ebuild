# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="Microsoft authentication extensions library for Python"
HOMEPAGE="https://pypi.org/project/msal-extensions"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-python/msal-0.4.1[${PYTHON_USEDEP}]
	>=dev-python/portalocker-1.0.0[${PYTHON_USEDEP}]"

DEPEND="${RDEPEND}"
