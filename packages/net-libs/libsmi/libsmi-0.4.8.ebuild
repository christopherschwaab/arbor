# Copyright 2008 Wulf C. Krueger
# Distributed under the terms of the GNU General Public License v2

require common-metadata

SLOT="0"
PLATFORMS="~amd64"
MYOPTIONS=""

src_test() {
    # These tests are simply broken.
    sed -i '/^[[:space:]]*smidump-cm.test \\$/d' test/Makefile
	sed -i '/^[[:space:]]*smidump-sming.test \\$/d' test/Makefile
	
	default
}

src_install () {
	default
	dodoc smi.conf-example doc/{*.txt,smi.dia,smi.dtd,smi.xsd}
	find "${IMAGE}"/usr/share -type d -empty | xargs --no-run-if-empty rmdir	
}
