# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="TransIP DNS Authenticator plugin for certbot"
HOMEPAGE="https://pypi.org/project/certbot-dns-transip/ https://github.com/hsmade/certbot-dns-transip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-0.16.0[${PYTHON_USEDEP}]
	~dev-python/python-transip-0.6.0[${PYTHON_USEDEP}]
"

PATCHES="${FILESDIR}/${PN}-dist_files.patch"
