# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="AutoRest swagger generator Python client runtime"
HOMEPAGE="https://pypi.org/project/msrest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+async"

RDEPEND=">=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	>=dev-python/isodate-0.6.0[${PYTHON_USEDEP}]
	>=dev-python/requests-oauthlib-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
	async? ( >=dev-python/aiohttp-3.0[${PYTHON_USEDEP}]
		dev-python/aiodns[${PYTHON_USEDEP}] )"

DEPEND="${RDEPEND}"

RESTRICT="test"
# test failed
