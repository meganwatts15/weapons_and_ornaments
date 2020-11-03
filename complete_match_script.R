#matching all the phylogenies with the data in one script

library(phytools)
#set wd dropbox
#setwd("C:/Users/megan.watts/Dropbox/Weapons and Ornaments/Tidy Data/Correct names")

#set wd github
setwd("C:/Users/megan.watts/weapons_and_ornaments/correct_names")

#read in phylogenies
bat_o_phylogeny <- read.newick("1_o_bat.nwk") 
as.phylo(bat_o_phylogeny) 

carnivore_w_phylogeny <- read.newick("1_w_carnivore.nwk") 
as.phylo(carnivore_w_phylogeny) 

bird_o_phylogeny <- read.newick("2_o_bird.nwk") 
as.phylo(bird_o_phylogeny) 

ibis_w_phylogeny <- read.nexus("2_w_ibis.nex") 
as.phylo(ibis_w_phylogeny) 

galliformes_o_phylogeny <- read.newick("3_o_galliformes.nwk") 
as.phylo(galliformes_o_phylogeny) 

galliformes_w_phylogeny <- read.newick("3_w_galliformes.nwk") 
as.phylo(galliformes_w_phylogeny) 

draco_o_phylogeny <- read.newick("4_o_draco.nwk") 
as.phylo(draco_o_phylogeny) 

lizard_w_phylogeny <- read.newick("4_w_lizard.nwk") 
as.phylo(lizard_w_phylogeny) 

primate_o_phylogeny <- read.newick("5_o_primate.nwk") 
as.phylo(primate_o_phylogeny) 

primate_w_phylogeny <- read.newick("5_w_primate.nwk") 
as.phylo(primate_w_phylogeny) 

spider_o_phylogeny <- read.nexus("6_o_spider.nex") 
as.phylo(spider_o_phylogeny) 

opiliones_w_phylogeny <- read.tree("6_w_opiliones.tre") 
as.phylo(opiliones_w_phylogeny) 

stalkeyedfly_o_phylogeny <- read.tree("7_o_stalkeyedfly.tree") 
as.phylo(stalkeyedfly_o_phylogeny) 

beetle_w_phylogeny <- read.tree("7_w_beetle.tree") 
as.phylo(beetle_w_phylogeny) 


# read in the data.
bat_o_data <- read.csv("1_o_bat.csv", header = T, fileEncoding="UTF-8-BOM")

carnivore_w_data <- read.csv("1_w_carnivore.csv", header = T, fileEncoding="UTF-8-BOM")

bird_o_data <- read.csv("2_o_bird.csv", header = T, fileEncoding="UTF-8-BOM")

ibis_w_data <- read.csv("2_w_ibis.csv", header = T, fileEncoding="UTF-8-BOM")

galliformes_o_data <- read.csv("3_o_galliformes.csv", header = T, fileEncoding="UTF-8-BOM")

galliformes_w_data <- read.csv("3_w_galliformes.csv", header = T, fileEncoding="UTF-8-BOM")

draco_o_data <- read.csv("4_o_draco.csv", header = T, fileEncoding="UTF-8-BOM")

lizard_w_data <- read.csv("4_w_lizard.csv", header = T, fileEncoding="UTF-8-BOM")

primate_o_data <- read.csv("5_o_primate.csv", header = T, fileEncoding="UTF-8-BOM")

primate_w_data <- read.csv("5_w_primate.csv", header = T, fileEncoding="UTF-8-BOM")

spider_o_data <- read.csv("6_o_spider.csv", header = T, fileEncoding="UTF-8-BOM")

opiliones_w_data <- read.csv("6_w_opiliones.csv", header = T, fileEncoding="UTF-8-BOM")

stalkeyedfly_o_data <- read.csv("7_o_stalkeyedfly.csv", header = T, fileEncoding="UTF-8-BOM")

beetle_w_data <- read.csv("7_w_beetle.csv", header = T, fileEncoding="UTF-8-BOM")


#sort species in data not in tree

bat_o_not_in_tree <- setdiff(bat_o_data$species,bat_o_phylogeny$tip.label)
sort(bat_o_not_in_tree)

carnivore_w_not_in_tree<- setdiff(carnivore_w_data$species,carnivore_w_phylogeny$tip.label)
sort(carnivore_w_not_in_tree)

bird_o_not_in_tree <- setdiff(bird_o_data$species,bird_o_phylogeny$tip.label)
sort(bird_o_not_in_tree)

ibis_w_not_in_tree <- setdiff(ibis_w_data$species,ibis_w_phylogeny$tip.label)
sort(ibis_w_not_in_tree)

galliformes_o_not_in_tree <- setdiff(galliformes_o_data$species,galliformes_o_phylogeny$tip.label)
sort(galliformes_o_not_in_tree)

galliformes_w_not_in_tree <- setdiff(galliformes_w_data$species,galliformes_w_phylogeny$tip.label)
sort(galliformes_w_not_in_tree)

draco_o_not_in_tree <- setdiff(draco_o_data$species,draco_o_phylogeny$tip.label)
sort(draco_o_not_in_tree)

lizard_w_not_in_tree <- setdiff(lizard_w_data$species,lizard_w_phylogeny$tip.label)
sort(lizard_w_not_in_tree)

primate_o_not_in_tree <- setdiff(primate_o_data$species,primate_o_phylogeny$tip.label)
sort(primate_o_not_in_tree)

primate_w_not_in_tree <- setdiff(primate_w_data$species,primate_w_phylogeny$tip.label)
sort(primate_w_not_in_tree)

spider_o_not_in_tree <- setdiff(spider_o_data$species,spider_o_phylogeny$tip.label)
sort(spider_o_not_in_tree)

opiliones_w_not_in_tree <- setdiff(opiliones_w_data$species,opiliones_w_phylogeny$tip.label)
sort(opiliones_w_not_in_tree)

stalkeyedfly_o_not_in_tree <- setdiff(stalkeyedfly_o_data$species,stalkeyedfly_o_phylogeny$tip.label)
sort(stalkeyedfly_o_not_in_tree)

beetle_w_not_in_tree <- setdiff(beetle_w_data$species,beetle_w_phylogeny$tip.label)
sort(beetle_w_not_in_tree)

