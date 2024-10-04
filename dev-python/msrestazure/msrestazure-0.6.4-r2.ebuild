# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="AutoRest swagger generator Python client runtime. Azure-specific module"
HOMEPAGE="https://pypi.org/project/msrestazure"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"

RDEPEND=">=dev-python/adal-1.2.7[${PYTHON_USEDEP}]
	>=dev-python/msrest-0.6.21[${PYTHON_USEDEP}]"

DEPEND="${RDEPEND}"
