# Generated automatically from Makefile.in by configure.
# Copyright (C) 2000, 2001  Internet Software Consortium.
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND INTERNET SOFTWARE CONSORTIUM
# DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL
# INTERNET SOFTWARE CONSORTIUM BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING
# FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
# NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION
# WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# $Id: Makefile.in,v 1.15 2001/06/01 00:45:01 bwelling Exp $

srcdir =	.
top_srcdir =	../..

VERSION=9.2.2


# Copyright (C) 1999-2001  Internet Software Consortium.
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND INTERNET SOFTWARE CONSORTIUM
# DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL
# INTERNET SOFTWARE CONSORTIUM BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING
# FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
# NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION
# WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# $Id: includes.in,v 1.15 2001/07/10 19:59:03 gson Exp $

# Search for machine-generated header files in the build tree,
# and for normal headers in the source tree (${top_srcdir}).
# We only need to look in OS-specific subdirectories for the
# latter case, because there are no machine-generated OS-specific
# headers.

ISC_INCLUDES = -I/NetSec/bind-9.2.2/lib/isc/include \
	-I${top_srcdir}/lib/isc \
	-I${top_srcdir}/lib/isc/include \
	-I${top_srcdir}/lib/isc/unix/include \
	-I${top_srcdir}/lib/isc/nothreads/include

ISCCC_INCLUDES = -I/NetSec/bind-9.2.2/lib/isccc/include \
       -I${top_srcdir}/lib/isccc/include

ISCCFG_INCLUDES = -I/NetSec/bind-9.2.2/lib/isccfg/include \
       -I${top_srcdir}/lib/isccfg/include

DNS_INCLUDES = -I/NetSec/bind-9.2.2/lib/dns/include \
	-I${top_srcdir}/lib/dns/include \
	-I${top_srcdir}/lib/dns/sec/dst/include

LWRES_INCLUDES = -I/NetSec/bind-9.2.2/lib/lwres/include \
	-I${top_srcdir}/lib/lwres/unix/include \
	-I${top_srcdir}/lib/lwres/include

TEST_INCLUDES = \
	-I${top_srcdir}/lib/tests/include

CINCLUDES =	${LWRES_INCLUDES} ${DNS_INCLUDES} ${ISC_INCLUDES}

CDEFINES =
CWARNINGS =

LWRESLIBS =	../../lib/lwres/liblwres.a
DNSLIBS =	../../lib/dns/libdns.a  
ISCLIBS =	../../lib/isc/libisc.a

LWRESDEPLIBS =	../../lib/lwres/liblwres.a
DNSDEPLIBS =	../../lib/dns/libdns.a
ISCDEPLIBS =	../../lib/isc/libisc.a

DEPLIBS =	${DNSDEPLIBS} ${ISCDEPLIBS}

LIBS =		${LWRESLIBS} ${DNSLIBS} ${ISCLIBS} 

SUBDIRS =

TARGETS =	nsupdate

OBJS =		nsupdate.o

UOBJS =

SRCS =		nsupdate.c

MANPAGES =	nsupdate.8

HTMLPAGES =	nsupdate.html

MANOBJS =	${MANPAGES} ${HTMLPAGES}


# Copyright (C) 1998-2003  Internet Software Consortium.
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND INTERNET SOFTWARE CONSORTIUM
# DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL
# INTERNET SOFTWARE CONSORTIUM BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING
# FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
# NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION
# WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# $Id: rules.in,v 1.40.2.3.4.2 2003/02/17 07:05:11 marka Exp $

###
### Common Makefile rules for BIND 9.
###

###
### Paths
###
### Note: paths that vary by Makefile MUST NOT be listed
### here, or they won't get expanded correctly.

prefix =	/usr/local
exec_prefix =	${prefix}
bindir =	${exec_prefix}/bin
sbindir =	${exec_prefix}/sbin
includedir =	${prefix}/include
libdir =	${exec_prefix}/lib
sysconfdir =	/etc
localstatedir =	/var
mandir =	${prefix}/man

DESTDIR =

MAKE=make

top_builddir =	/NetSec/bind-9.2.2

###
### All
###
### Makefile may define:
###	TARGETS

all: subdirs ${TARGETS}

###
### Subdirectories
###
### Makefile may define:
###	SUBDIRS

ALL_SUBDIRS = ${SUBDIRS} nulldir

#
# We use a single-colon rule so that additional dependencies of
# subdirectories can be specified after the inclusion of this file.
# The "depend" target is treated the same way.
#
subdirs:
	@for i in ${ALL_SUBDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making all in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" all) || exit 1; \
		fi; \
	done

install:: all

install clean distclean maintainer-clean doc docclean man manclean::
	@for i in ${ALL_SUBDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making $@ in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" $@) || exit 1; \
		fi; \
	done

###
### C Programs
###
### Makefile must define
###	CC
### Makefile may define
###	CFLAGS
###	CINCLUDES
###	CDEFINES
###	CWARNINGS
### User may define externally
###     EXT_CFLAGS

CC = 		gcc
CFLAGS =	-g -O2
STD_CINCLUDES =	
STD_CDEFINES =	
STD_CWARNINGS =	 -W -Wall -Wmissing-prototypes -Wcast-qual -Wwrite-strings -Wformat

.SUFFIXES:
.SUFFIXES: .c .o

ALWAYS_INCLUDES = -I${top_builddir}
ALWAYS_DEFINES = 
ALWAYS_WARNINGS =

ALL_CPPFLAGS = \
	${ALWAYS_INCLUDES} ${CINCLUDES} ${STD_CINCLUDES} \
	${ALWAYS_DEFINES} ${CDEFINES} ${STD_CDEFINES}

ALL_CFLAGS = ${EXT_CFLAGS} ${CFLAGS} \
	${ALL_CPPFLAGS} \
	${ALWAYS_WARNINGS} ${STD_CWARNINGS} ${CWARNINGS}

.c.o:
	${LIBTOOL} ${CC} ${ALL_CFLAGS} -c $<

SHELL = /bin/sh
LIBTOOL = 
PURIFY = 

MKDEP = ${SHELL} ${top_builddir}/make/mkdep

cleandir: distclean
superclean: maintainer-clean

clean distclean maintainer-clean::
	rm -f *.o *.lo *.la core *.core
	rm -rf .libs

distclean maintainer-clean::
	rm -f Makefile

depend:
	@for i in ${ALL_SUBDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making depend in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" $@) || exit 1; \
		fi; \
	done
	@if [ X"${SRCS}" != X -a X"${PSRCS}" != X ] ; then \
		echo ${MKDEP} ${ALL_CPPFLAGS} ${SRCS}; \
		${MKDEP} ${ALL_CPPFLAGS} ${SRCS}; \
		echo ${MKDEP} -ap ${ALL_CPPFLAGS} ${PSRCS}; \
		${MKDEP} -ap ${ALL_CPPFLAGS} ${PSRCS}; \
		${DEPENDEXTRA} \
	elif [ X"${SRCS}" != X ] ; then \
		echo ${MKDEP} ${ALL_CPPFLAGS} ${SRCS}; \
		${MKDEP} ${ALL_CPPFLAGS} ${SRCS}; \
		${DEPENDEXTRA} \
	elif [ X"${PSRCS}" != X ] ; then \
		echo ${MKDEP} ${ALL_CPPFLAGS} ${PSRCS}; \
		${MKDEP} -p ${ALL_CPPFLAGS} ${PSRCS}; \
		${DEPENDEXTRA} \
	fi

FORCE:

###
### Libraries
###

AR =		/usr/bin/ar
ARFLAGS =	cruv
RANLIB =	ranlib

###
### Installation
###

INSTALL =		/usr/bin/install -c
INSTALL_PROGRAM =	${INSTALL}
INSTALL_SCRIPT =	${INSTALL_PROGRAM}
INSTALL_DATA =		${INSTALL} -m 644

###
### DocBook -> HTML
### DocBook -> man page
###

.SUFFIXES: .docbook .html .1 .2 .3 .4 .5 .6 .7 .8

OPENJADE = openjade
SGMLCATALOG = catalog
HTMLSTYLE = html/docbook.dsl
XMLDCL = docbook/dsssl/modular/dtds/decls/xml.dcl
DOCBOOK2MANSPEC = docbook2X/docbook2man-spec.pl
JADETEX = jadetex
PDFJADETEX = pdfjadetex

ONSGMLS = onsgmls
SGMLSPL = sgmlspl

#
# Note: this rule assumes the docbook.dsl stylesheet
# is being used.  If another stylesheet is used, the
# filename 'r1.htm' in the rule might have to be
# be changed.
#
.docbook.html:
	${OPENJADE} -c ${SGMLCATALOG} -t sgml -d ${HTMLSTYLE} $<
	echo "" >> r1.htm
	cat ${top_srcdir}/docutil/HTML_COPYRIGHT r1.htm > $@

.docbook.1:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.2:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.3:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.4:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.5:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.6:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.7:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@
.docbook.8:
	sh ${top_srcdir}/docutil/docbook2man-wrapper.sh ${top_srcdir} $< $@

nsupdate: nsupdate.o ${UOBJS} ${DEPLIBS}
	${LIBTOOL} ${PURIFY} ${CC} ${CFLAGS} -o $@ nsupdate.o ${UOBJS} ${LIBS}

doc man:: ${MANOBJS}

docclean manclean maintainer-clean::
	rm -f ${MANOBJS}

clean distclean::
	rm -f ${TARGETS}

installdirs:
	$(SHELL) ${top_srcdir}/mkinstalldirs ${DESTDIR}${bindir}
	$(SHELL) ${top_srcdir}/mkinstalldirs ${DESTDIR}${mandir}/man8

install:: nsupdate installdirs
	${LIBTOOL} ${INSTALL_PROGRAM} nsupdate ${DESTDIR}${bindir}
	${INSTALL_DATA} ${srcdir}/nsupdate.8 ${DESTDIR}${mandir}/man8
