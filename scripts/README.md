###README file for scripts addition###
##2019-02-15##
cloned github repository callHotspotsSSDS from github into this directory via the command:
	`git submodule add https://github.com/kevbrick/callHotspotsSSDS scripts/callHotspotsSSDS`

cloned github respository SSDSpipeline from github into this directory via the command:
	`git submodule add https://github.com/kevbrick/SSDSpipeline scripts/SSDSpipeline`

##2019-02-27##
ran `sudo configure.sh` for SSDS_pipeline_1.0.0
attempted unitTest `sh runTest.sh` but got an error message --> have to attempt manual installation which can be found in the README

removed old submodule of SSDS pipeline and redownloaded through command:
	`git submodule add https://github.com/kevbrick/SSDSpipeline scripts/SSDS_pipeline

Completely removed the SSDS pipeline. Realized that their ssDNA data from the SSDS experiments is also published.
	I can run that through the callHotspots pipeline instead of dealing with genome alignments.
