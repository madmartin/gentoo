# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TEXLIVE_MODULE_CONTENTS="
	collection-langeuropean.r66432
	armtex.r69418
	babel-albanian.r57005
	babel-bosnian.r38174
	babel-breton.r30257
	babel-croatian.r35198
	babel-danish.r57642
	babel-dutch.r60362
	babel-estonian.r38064
	babel-finnish.r57643
	babel-friulan.r39861
	babel-hungarian.r49701
	babel-icelandic.r51551
	babel-irish.r30277
	babel-kurmanji.r30279
	babel-latin.r59800
	babel-latvian.r46681
	babel-lithuanian.r66513
	babel-macedonian.r39587
	babel-norsk.r69603
	babel-occitan.r39608
	babel-piedmontese.r30282
	babel-romanian.r58776
	babel-romansh.r30286
	babel-samin.r69604
	babel-scottish.r69610
	babel-slovenian.r69742
	babel-swedish.r57647
	babel-turkish.r51560
	babel-welsh.r38372
	finbib.r15878
	hrlatex.r18020
	huaz.r64723
	hulipsum.r56848
	hyphen-croatian.r58652
	hyphen-danish.r58652
	hyphen-dutch.r58609
	hyphen-estonian.r58652
	hyphen-finnish.r58652
	hyphen-friulan.r58652
	hyphen-hungarian.r58652
	hyphen-icelandic.r58652
	hyphen-irish.r58609
	hyphen-kurmanji.r58652
	hyphen-latin.r58652
	hyphen-latvian.r58652
	hyphen-lithuanian.r58652
	hyphen-macedonian.r58652
	hyphen-norwegian.r58609
	hyphen-occitan.r58652
	hyphen-piedmontese.r58652
	hyphen-romanian.r58652
	hyphen-romansh.r58652
	hyphen-slovenian.r58652
	hyphen-swedish.r58652
	hyphen-turkish.r58652
	hyphen-uppersorbian.r58609
	hyphen-welsh.r58652
	lithuanian.r66461
	nevelok.r39029
	rojud.r56895
	swebib.r15878
	turkmen.r17748
"
TEXLIVE_MODULE_DOC_CONTENTS="
	armtex.doc.r69418
	babel-albanian.doc.r57005
	babel-bosnian.doc.r38174
	babel-breton.doc.r30257
	babel-croatian.doc.r35198
	babel-danish.doc.r57642
	babel-dutch.doc.r60362
	babel-estonian.doc.r38064
	babel-finnish.doc.r57643
	babel-friulan.doc.r39861
	babel-hungarian.doc.r49701
	babel-icelandic.doc.r51551
	babel-irish.doc.r30277
	babel-kurmanji.doc.r30279
	babel-latin.doc.r59800
	babel-latvian.doc.r46681
	babel-lithuanian.doc.r66513
	babel-macedonian.doc.r39587
	babel-norsk.doc.r69603
	babel-occitan.doc.r39608
	babel-piedmontese.doc.r30282
	babel-romanian.doc.r58776
	babel-romansh.doc.r30286
	babel-samin.doc.r69604
	babel-scottish.doc.r69610
	babel-slovenian.doc.r69742
	babel-swedish.doc.r57647
	babel-turkish.doc.r51560
	babel-welsh.doc.r38372
	gloss-occitan.doc.r52593
	hrlatex.doc.r18020
	huaz.doc.r64723
	hulipsum.doc.r56848
	hyphen-hungarian.doc.r58652
	kaytannollista-latexia.doc.r69468
	lithuanian.doc.r66461
	lshort-dutch.doc.r15878
	lshort-estonian.doc.r39323
	lshort-finnish.doc.r15878
	lshort-slovenian.doc.r68204
	lshort-turkish.doc.r15878
	nevelok.doc.r39029
	rojud.doc.r56895
	swebib.doc.r15878
	turkmen.doc.r17748
"
TEXLIVE_MODULE_SRC_CONTENTS="
	babel-albanian.source.r57005
	babel-bosnian.source.r38174
	babel-breton.source.r30257
	babel-croatian.source.r35198
	babel-danish.source.r57642
	babel-dutch.source.r60362
	babel-estonian.source.r38064
	babel-finnish.source.r57643
	babel-friulan.source.r39861
	babel-icelandic.source.r51551
	babel-irish.source.r30277
	babel-kurmanji.source.r30279
	babel-latin.source.r59800
	babel-latvian.source.r46681
	babel-lithuanian.source.r66513
	babel-macedonian.source.r39587
	babel-norsk.source.r69603
	babel-occitan.source.r39608
	babel-piedmontese.source.r30282
	babel-romanian.source.r58776
	babel-romansh.source.r30286
	babel-samin.source.r69604
	babel-scottish.source.r69610
	babel-slovenian.source.r69742
	babel-swedish.source.r57647
	babel-turkish.source.r51560
	babel-welsh.source.r38372
	gloss-occitan.source.r52593
	hrlatex.source.r18020
	hulipsum.source.r56848
	hyphen-turkish.source.r58652
	nevelok.source.r39029
	turkmen.source.r17748
"

inherit texlive-module

DESCRIPTION="TeXLive Other European languages"

LICENSE="CC-BY-SA-4.0 GPL-1+ GPL-2 LPPL-1.2 LPPL-1.3 LPPL-1.3c TeX-other-free public-domain"
SLOT="0"
KEYWORDS="~alpha ~amd64 arm ~arm64 ~hppa ~loong ~mips ~ppc ppc64 ~riscv ~s390 ~sparc ~x86"
COMMON_DEPEND="
	>=dev-texlive/texlive-basic-2023
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
"
