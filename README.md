#**Bioinformatics**
-callHotSpots-project

-This repository is to track the progress of my final bioinformatics project as I attempt to replicate a chosen figure from a paper using their published source code and material

#**Reference**
-Brick, K., S. Thibault-Sennett, F. Smagulova, K.-W. G. Lam, Y. Pu et al., 2018 Extensive sex differences at the initiation of genetic recombination. Nature 561: 338-342.

#**Introduction**
>It was previously established at meiotic recombination differs extensively between males and females, however how and why this difference occurs was unknown. In this study they mapped meiotic hotspots in male and female mice and found a fifteen-fold difference in hotspot usage between males and females (contrary to what has been found in humans). There was extensive usage of sex-specific hotspots, leading to vastly different meiotic recombination landscapes. This paper uses a specific version of ChIP-seq, called single-stranded DNA sequencing (SSDS), to determine hotspots in the genome. The fragments that are sequenced are isolated via crosslinking of DMC1 to the single-stranded DNA (an intermediate in DSB repair). They then perform a pull-down on DMC1 (a meiosis-specific homologous recombination protein) and sequence the ssDNA attached to determine hotspot location.

#**Figure**
>The figure that I aim to reproduce not only compares hotspot signals between males vs. males and females vs. females (to compare strength of hotspot signal between different replicates) but it also compares hotspot strength between both males and females. Only hotspots that are called in both tests are analyzed. I would like to do a, b, and d on this figure. A and B indicate that between the two replicates that they tested for each sex, hotspot strength was highly correlated. D is an excellent graphical representation of the main finding of this paper, which is that while there are common genetic recombination spots employed by both sexes (in gray), there are a great number of hotspots that are much stronger (and thus used more) in one sex compared to the other (female in pink and male in blue). 
#Link to Figure image:
<https://drive.google.com/open?id=1SP9wbCfxOX700HVsycBgCTNrGor5uMh3>

>**Figure 2. a–c**, Hotspot strength is consistent between replicates from the same sex (**a, b**), but differs between males and females (**c**). **a–c**, Spearman R2 values are shown. Only hotspots called in both maps are considered. **d**, Strength differs between males and females (female-biased (pink), unbiased (grey), and male-biased (blue) hotspots).

#**Outline of Approaches**
1.	Download source code for SSDS pipeline from github <https://github.com/kevbrick/SSDSpipeline>
2.	Get data from GEO #GSE99921: samples O1, O2, T1, and T2. 
3.	Run data for male and female mouse samples through SSDS pipeline, as described in the github link, which involves mapping reads and strength quantification of hotspots called via the alignment. 
4.	Once run through SSDS pipeline, run these output files through the HotSpot calling and strength quantification pipeline <https://github.com/kevbrick/callHotspotsSSDS>
5.	Contruct the above graphs in R using the data output from the SSDS analysis. There is an accompanying R script that they included in the github repository in the above link so that graphs are generated.
