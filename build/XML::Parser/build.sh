#!/usr/bin/bash

# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
# }}}

# Copyright 2019 OmniOS Community Edition (OmniOSce) Association.

. ../../lib/functions.sh

PKG=library/perl-5/xml-parser
PROG=XML-Parser
VER=2.46
SUMMARY="XML::Parser perl module"
DESC="A perl module for parsing XML documents"

PREFIX=/usr/perl5
reset_configure_opts

NO_PARALLEL_MAKE=1
SKIP_LICENCES=Artistic

BUILD_DEPENDS_IPS="runtime/perl runtime/perl-64"
RUN_DEPENDS_IPS="$BUILD_DEPENDS_IPS"

init
download_source perlmodules/$PROG $PROG $VER
patch_source
prep_build
buildperl
siteperl_to_vendor
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
