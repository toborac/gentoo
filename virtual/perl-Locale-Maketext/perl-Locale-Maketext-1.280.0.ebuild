# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Virtual for ${PN#perl-}"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 ~hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~x64-cygwin ~amd64-fbsd ~x86-fbsd"

RDEPEND="
	|| ( =dev-lang/perl-5.26* ~perl-core/${PN#perl-}-${PV} )
	dev-lang/perl:=
	!<perl-core/Locale-Maketext-${PV}
	!>perl-core/Locale-Maketext-${PV}-r999
"
