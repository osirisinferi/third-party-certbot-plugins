# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

MY_PN=${PN//-/_}

DESCRIPTION="TransIP DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-transip/ https://github.com/hsmade/certbot-dns-transip"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-0.16.0[${PYTHON_USEDEP}]
	>=app-crypt/acme-0.16.0[${PYTHON_USEDEP}]
	~dev-python/transip-0.6.0[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_PN}-${PV}"

PATCHES="${FILESDIR}/${PN}-dist_files.patch"
