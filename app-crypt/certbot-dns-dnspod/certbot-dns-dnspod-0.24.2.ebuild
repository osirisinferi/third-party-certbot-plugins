# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

EGIT_REPO_URI="https://github.com/tengattack/certbot-dns-dnspod.git"
EGIT_COMMIT="1991d8177967192c867b135a4c3529c8698ec49b"

inherit distutils-r1 git-r3

DESCRIPTION="DNSPod DNS Authenticator plugin for certbot"
HOMEPAGE="https://github.com/tengattack/certbot-dns-dnspod"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-crypt/certbot-0.21.1[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/dns-lexicon[${PYTHON_USEDEP}]
"
