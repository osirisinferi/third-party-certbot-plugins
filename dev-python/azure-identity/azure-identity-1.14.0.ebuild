# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1 pypi

DESCRIPTION="Microsoft Azure identity library for Python"
HOMEPAGE="https://pypi.org/project/azure-identity"
SRC_URI=$(pypi_sdist_url --no-normalize "${PN}" "${PV}" .zip)

KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SLOT="0"

RDEPEND=">=dev-python/azure-core-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/msal-1.20.0[${PYTHON_USEDEP}]
	>=dev-python/msal-extensions-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]"

BDEPEND="app-arch/unzip"

DEPEND="${RDEPEND}"

RESTRICT="test"
