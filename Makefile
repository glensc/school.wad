
DATADIR := /usr/share/games/doom-data
FILE := school.wad

all:

info:
	deutex -doom2 $(DATADIR) -wadir $(FILE)

wad:
	mv -fb $(FILE) wads/
	deutex -doom2 $(DATADIR) -make $(FILE)

$(FILE): levels/map01.wad
	mv -fb $(FILE) wads/
	deutex -doom2 $(DATADIR) -make $(FILE)

play game: $(FILE)
	doom2 -file `pwd`/$(FILE) +map MAP01
