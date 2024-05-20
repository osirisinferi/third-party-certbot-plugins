# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="An unofficial python implementation for managing freenom.com dns records"
HOMEPAGE="https://pypi.org/project/freenom/ https://github.com/Shm013/freenom-dns"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-python/requests-2.23.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.5.0[${PYTHON_USEDEP}]
	>=dev-python/retrying-1.3.3[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
