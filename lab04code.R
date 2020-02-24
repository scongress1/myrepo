#clear working environment
rm(list=(ls()))

getwd()

#installation of BiocManager
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.10")

#BiocManager::install()
#BiocManager::valid() 

#installation of biostrings package
BiocManager::install(c("Biostrings"))

#load biostrings library
library("Biostrings")

data(BLOSUM50)

BLOSUM50[1:4, 1:4]

nw<-pairwiseAlignment(AAString("PAWHEAE"), AAString("HEAGAWGHEE"), substitutionMatrix = BLOSUM50, 
                      gapOpening= 0) #error here so i took out the gapExtension = -8
nw

compareStrings(nw)