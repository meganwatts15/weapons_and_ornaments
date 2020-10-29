
library(phytools)
# set working directory
setwd("C:/Users/megan.watts/Downloads")

# read in the tree block
tree <- read.nexus("C:/Users/megan.watts/Downloads/S16381.nex") 
as.phylo(tree) # shouldn't be needed, but if it is, this get the tree in the right data format

# read in the data.
data <- read.csv("C:/Users/megan.watts/Downloads/6_o_spider.csv", header = T, fileEncoding="UTF-8-BOM")

#plotTree(root(rf.tree,outgroup=c("Pelicaniformes"),resolve.root=TRUE))
#remove species with incomplete data on the traits of interest - these wont be analysed
#data <- data[complete.cases(data$MDS, data$FDS),]

# work out what data isn't in the phylogeny and add this as a column on the spreadsheet
#data$not_in_phy <- as.numeric(is.na(-match(data$species, tree$tip.label)))
#write.csv(data, "C:/Users/willa/Dropbox/Weapons and Ornaments Megan/Tidy Data/Weapons/Galliformes/Sullivan_93_tidy.csv")

#can also list these species in R
sp_in_data_not_tree <- setdiff(data$species,tree$tip.label)
sort(sp_in_data_not_tree)

#the list of species that are in the phylogeny but not the data might also help match some of the missing ones up.
sp_in_tree_not_data <- setdiff(tree$tip.label,data$species)
sort(sp_in_tree_not_data)

#trying to make matches I find is often a mnual process of using online taxonomies and searching for species names to find updates and synonyms. 
#taxize can sometimes help though
library(taxize)

temp <- gnr_resolve(names = sp_in_tree_not_data)
View(temp)
#look through 'temp' to help find any errors. in this example you can see there is a typo in "Tetraogallus_capius" - it sould be "	Tetraogallus_caspius"


#when you are happy that as many matches as possible have been made you can prune the tree to the data and the data to the the tree
#prune the trees to the data
pruned_tree <- drop.tip(tree, setdiff(tree$tip.label, data$species))

#prune the data to the trees
pruned_data <- data[match(data$species, pruned_tree$tip.label),]
pruned_data <- pruned_data[complete.cases(pruned_data$maleUCH, pruned_data$femaleUCH),]

#save as csv
write.csv(pruned_data, "C:/Users/megan.watts/Downloads/carnivore_data_pruned.csv")