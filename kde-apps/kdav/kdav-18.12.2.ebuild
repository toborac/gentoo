# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KDE_TEST="forceoptional"
VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="DAV protocol implemention with KJobs"
LICENSE="GPL-2+"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kio)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtxml)
	$(add_qt_dep qtxmlpatterns)
"
RDEPEND="${DEPEND}
	!kde-apps/kdepim-l10n
"

src_test() {
	# bug 616808 - DavItemFetchJobTest requires D-Bus
	# bug 653602 - DavItemsListJobTest mimetypes unsupported
	local myctestargs=(
		-E "(kdav-davitemfetchjob|kdav-davitemslistjob)"
	)
	kde5_src_test
}
