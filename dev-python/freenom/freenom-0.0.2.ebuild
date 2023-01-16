# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..10} )

inherit distutils-r1

DESCRIPTION="An unofficial python implementation for managing freenom.com dns records"
HOMEPAGE="https://pypi.org/project/freenom/ https://github.com/Shm013/freenom-dns"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

CDEPEND=">=dev-python/setuptools-1.0[${PYTHON_USEDEP}]"
RDEPEND="${CDEPEND}
	>=dev-python/requests-2.23.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.5.0[${PYTHON_USEDEP}]
	>=dev-python/retrying-1.3.3[${PYTHON_USEDEP}]"
DEPEND="${CDEPEND}"
