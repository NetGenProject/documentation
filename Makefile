
pdf: DocNetGen.tex
	pdflatex DocNetGen.tex

tar:
	tar cvzf netgenDoc.tgz \
	Makefile \
	chapter4.tex \
	chapter5.tex \
	chapter6.tex \
	DocNetGen.aux \
	DocNetGen.log \
	DocNetGen.pdf \
	DocNetGen.toc \
	DocNetGen.tex \
	mekong1Logic.pdf \
	Generated \
	BuildNet2.png \
	BuildNet1.png \
	PickPoints3.png \
	PickPoints2.png \
	PickPoints1.png \
	BiDirRing4.png \
	mekong.png \
	GridRange200Points40.png \
	ring5-rogne.pdf \
	ring5.pdf \
	genRange100Points40-rogne.pdf \
	genRange100Points40.pdf \
	genRange100Points40.ps \
	genRange100Points40.occ \
	genRange100Points40.dot \
	printIt.png \
	netgen-commented.png \
	netgen-initial.png \
	store-load.png \
	store-access.png \
	startInit-newEnv.png \
	startInit-initialEnv.png \
	mux* \
	Ring5/* \
	BiDirRing4/* \
	OccamDev/*

