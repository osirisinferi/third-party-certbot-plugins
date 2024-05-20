# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Python 3 library for the Exonet API"
HOMEPAGE="https://pypi.org/project/exonetapi/ https://github.com/exonet/exonet-api-python"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

RESTRICT="test"

RDEPEND="
	>=dev-python/requests-2.27.0[${PYTHON_USEDEP}]
	>=dev-python/inflection-0.5.1[${PYTHON_USEDEP}]
"
