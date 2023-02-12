# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} )

DISTUTILS_USE_PEP517=setuptools

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

inherit distutils-r1 linux-info

DESCRIPTION="Authenticator plugin using NFQUEUE for Certbot (Let's Encrypt Client)"
HOMEPAGE="https://github.com/alexzorin/certbot-standalone-nfq https://pypi.org/project/certbot-standalone-nfq/"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	>=dev-python/setuptools-40.9.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools-scm-7.0.5[${PYTHON_USEDEP}]
	>=app-crypt/certbot-1.25.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-1.25.0[${PYTHON_USEDEP}]
	net-analyzer/scapy[${PYTHON_USEDEP}]
	net-analyzer/fnfqueue[${PYTHON_USEDEP}]
	dev-python/pyroute2[${PYTHON_USEDEP}]
"

CONFIG_CHECK="~NFT_QUEUE ~NETFILTER_NETLINK_QUEUE ~NF_TABLES_INET"
