# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Microsoft Azure Client Library for Python (Common)"
HOMEPAGE="https://pypi.org/project/azure-common"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SLOT="0"

RDEPEND=""

BDEPEND="app-arch/unzip"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
