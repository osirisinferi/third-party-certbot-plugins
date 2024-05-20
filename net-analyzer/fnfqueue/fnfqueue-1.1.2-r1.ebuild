# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 linux-info pypi

DESCRIPTION="Fast python library encapsulating the nfqueue netlink interface"
HOMEPAGE="https://pypi.org/project/fnfqueue/ https://github.com/notti/fnfqueue/"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="$(python_gen_cond_dep '
		    dev-python/cffi[${PYTHON_USEDEP}]
		' 'python*')
	${RDEPEND}"

CONFIG_CHECK="~NETFILTER_NETLINK_QUEUE"
