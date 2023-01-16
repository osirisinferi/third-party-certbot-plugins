# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..10} )

inherit distutils-r1

MY_PN=${PN//-/_}

DESCRIPTION="A setuptools extension for building cpython extensions written in golang"
HOMEPAGE="https://pypi.org/project/setuptools-golang/ https://github.com/asottile/setuptools-golang/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_PN}-${PV}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${MY_PN}-${PV}"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}"

PATCHES=(
	"${FILESDIR}/${P}-remove-build_manylinux_wheels.patch"
	"${FILESDIR}/${P}-remove-go-get.patch"
)
