# New ports collection makefile for:	bpkg
# Date created:				24 June 2007
# Whom:					Andy Kosela <akosela@andykosela.com>
#
# $FreeBSD: ports/ports-mgmt/bpkg/Makefile,v 1.33 2012/02/09 10:40:26 sunpoet Exp $
#
# This port is self contained in the files directory.
#

PORTNAME=	bpkg
PORTVERSION=	2.1.7
CATEGORIES=	ports-mgmt
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	akosela@andykosela.com
COMMENT=	Simple tool for displaying information about ports

NO_BUILD=	yes
SUB_FILES=	bpkg.sh

PLIST_FILES=	bin/bpkg

MAN8=		bpkg.8

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/bpkg.sh ${PREFIX}/bin/bpkg
	${INSTALL_MAN} ${FILESDIR}/bpkg.8 ${MAN8PREFIX}/man/man8

.include <bsd.port.mk>
