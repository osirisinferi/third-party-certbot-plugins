# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="A setuptools extension for building cpython extensions written in golang"
HOMEPAGE="https://pypi.org/project/setuptools-golang/ https://github.com/asottile/setuptools-golang/"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

PATCHES=(
	"${FILESDIR}/${P}-remove-build_manylinux_wheels.patch"
	"${FILESDIR}/${P}-remove-go-get.patch"
)
