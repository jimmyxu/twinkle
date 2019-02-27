all:

modules = modules/friendlytag.js \
		  modules/friendlytalkback.js \
		  modules/twinklearv.js \
		  modules/twinklebatchdelete.js \
		  modules/twinklebatchundelete.js \
		  modules/twinkleblock.js \
		  modules/twinkleclose.js \
		  modules/twinkleconfig.js \
		  modules/twinklecopyvio.js \
		  modules/twinklediff.js \
		  modules/twinklefluff.js \
		  modules/twinkleimage.js \
		  modules/twinkleprotect.js \
		  modules/twinklespeedy.js \
		  modules/twinkleunlink.js \
		  modules/twinklewarn.js \
		  modules/twinklexfd.js

deploy: twinkle.js twinkle.css morebits.js morebits.css twinkle-pagestyles.css $(modules)
	./sync.pl ${ARGS} --deploy $^

.PHONY: deploy test all
