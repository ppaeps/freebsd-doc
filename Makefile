# $FreeBSD: www/Makefile,v 1.10 1999/11/03 10:59:24 phantom Exp $

LINKS= 	en/ja en/es en/ru en/zh ja/web.mk ru/web.mk
LINKS+=	web.mk

.if !defined(WEB_ONLY) || empty(WEB_ONLY)
LINKS+= ../doc/en_US.ISO_8859-1/web.mk
LINKS+= ../doc/en_US.ISO_8859-1/includes.sgml
.endif

SUBDIR= en

all: links


links: ${LINKS}

clean:
	rm -f ${LINKS}


en/ja:
	cd en; ln -sf ../ja

en/es:
	cd en; ln -sf ../es

en/ru:
	cd en; ln -sf ../ru

en/zh:
	cd en; ln -sf ../zh

ja/web.mk:
	cd ja; ln -sf ../en/web.mk

ru/web.mk:
	cd ru; ln -sf ../en/web.mk

web.mk:
	cd .;  ln -sf en/web.mk

.if !defined(WEB_ONLY) || empty(WEB_ONLY)
../doc/en_US.ISO_8859-1/web.mk:
	cd ../doc/en_US.ISO_8859-1; ln -sf ../../www/en/web.mk

../doc/en_US.ISO_8859-1/includes.sgml:
	cd ../doc/en_US.ISO_8859-1; ln -sf ../../www/en/includes.sgml
.endif

.include <bsd.subdir.mk>
