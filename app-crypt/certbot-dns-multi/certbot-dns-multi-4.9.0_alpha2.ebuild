# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

MY_PV=${PV//_alpha/.dev}

KEYWORDS="~amd64 ~x86"

DESCRIPTION="DNS plugin for Certbot which integrates with the 100+ DNS providers from the lego ACME client"
HOMEPAGE="https://github.com/alexzorin/certbot-dns-multi https://pypi.org/project/certbot-dns-multi/"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${PN}-${MY_PV}.tar.gz
	https://github.com/osirisinferi/vendor/releases/download/${PN}-${MY_PV}/${PN}-${MY_PV}-vendor.tar.xz"

LICENSE="MIT"
SLOT="0"
IUSE=""

S="${WORKDIR}/${PN}-${MY_PV}"

DEPEND="
	dev-python/setuptools
	>=dev-python/setuptools_scm-7.0.5
	dev-python/setuptools-golang
	>=dev-lang/go-1.19.0
	>=app-crypt/certbot-1.12.0
	>=app-crypt/acme-1.12.0
"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	rm -r "${S}/tests"
}

python_install() {
	rm -r "${BUILD_DIR}/lib/${PN//-/_}/_internal/bridge/" || die
	distutils-r1_python_install
}
