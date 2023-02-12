# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1 linux-info

DESCRIPTION="Fast python library encapsulating the nfqueue netlink interface"
HOMEPAGE="https://pypi.org/project/fnfqueue/ https://github.com/notti/fnfqueue/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	virtual/python-cffi[${PYTHON_USEDEP}]
	${RDEPEND}"

CONFIG_CHECK="NETFILTER_NETLINK_QUEUE"
