# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 )
PYTHON_REQ_USE="ncurses"
inherit python-single-r1

DESCRIPTION="A frontend for several cd-rippers and mp3 encoders"
HOMEPAGE="http://www.home.unix-ag.org/arne/jack/"
SRC_URI="http://www.home.unix-ag.org/arne/jack/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}
	dev-python/cddb-py[${PYTHON_USEDEP}]
	dev-python/id3-py[${PYTHON_USEDEP}]
	dev-python/pyid3lib[${PYTHON_USEDEP}]
	dev-python/pyvorbis[${PYTHON_USEDEP}]
	media-libs/flac
	media-sound/lame
	media-sound/cdparanoia"
REQUIRED_USE=${PYTHON_REQUIRED_USE}
PATCHES=(
	"${FILESDIR}/${P}-python26.patch"
	"${FILESDIR}/${P}-dontuse-jack-cursesmodule.patch"
	"${FILESDIR}/${P}-add-cddbserver-musicbrainz.patch"
)

src_install() {
	python_doscript jack

	insinto $(python_get_sitedir)
	PYTHON_MODNAME="$(ls jack_*.py)"
	doins ${PYTHON_MODNAME}

	insinto /etc
	newins example.etc.jackrc jackrc

	newman jack.man jack.1

	DOCS=( README doc/ChangeLog doc/TODO )
	HTML_DOCS=( doc/*html doc/*css doc/*gif )
	einstalldocs
}
