# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

MY_P="${P/_/}"

DESCRIPTION="Microsoft Azure DNS Management Client Library for Python"
HOMEPAGE="https://pypi.org/project/azure-mgmt-dns"
SRC_URI=$(pypi_sdist_url --no-normalize "${PN}" "${PV}" .zip)

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-python/msrestazure-0.6.4[${PYTHON_USEDEP}]
	>=dev-python/azure-common-1.1.27[${PYTHON_USEDEP}]
	>=dev-python/azure-mgmt-core-1.2.0[${PYTHON_USEDEP}]"

BDEPEND="app-arch/unzip"

DEPEND="${RDEPEND}"

RESTRICT="test"
