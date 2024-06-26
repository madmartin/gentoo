# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple daemon to control email relay based on successful POP or IMAP logins"
HOMEPAGE="http://popbsmtp.sourceforge.net"
SRC_URI="https://downloads.sourceforge.net/popbsmtp/${P}.tar.gz"

LICENSE="|| ( GPL-2 BSD Artistic )"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="dev-lang/perl[berkdb]
	dev-perl/Net-Netmask
	dev-perl/TimeDate"

src_prepare() {
	default

	# enable syslog
	sed -i \
		-e "/^=cut #============================= syslog ===========================START=$/d" \
		-e "/^=cut #============================= syslog =============================END=$/d" \
		"${S}"/pop-before-smtp-conf.pl \
	|| die "sed pop-before-smtp-conf.pl failed"
}

src_install() {
	dosbin pop-before-smtp
	dodoc README ChangeLog TODO contrib/README.QUICKSTART
	insinto /etc
	doins pop-before-smtp-conf.pl
	newinitd "${FILESDIR}/pop-before-smtp.init" pop-before.smtp
}
