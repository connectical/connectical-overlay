# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EBZR_SRC_URI="bzr+http://code.connectical.com/patata/bzr/trunk"

inherit eutils distutils bazaar

DESCRIPTION="Python Agenda and Task Activity Tracker"
HOMEPAGE="http://code.connectical.com/patata/"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-python/pygtk-2.10"
RDEPEND="${DEPEND}"


src_install () {
	distutils_src_install
	python_version
	make_desktop_entry \
		patata Patata \
		"/usr/$(get_libdir)/python${PYVER}/site-packages/patata/ui/icon.svg" \
		"Utility;GTK"
}

