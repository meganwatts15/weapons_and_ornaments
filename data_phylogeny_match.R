library(phytools)# set working directory
print(getwd())

setwd("C:/Users/DJSau/weapons_and_ornaments/correct_names")

# davenwk < -read.newick('4_w_lizard.nwk')# class(davenwk)# plot.phylo(davenwk)

# davecsv < -read.csv('4_w_lizard.csv')# class(davecsv)# View(davecsv)

############################################################### https: //stackoverflow.com/questions/9564489/read-all-files-in-a-folder-and-apply-a-function-to-each-data-frame

    #Get the filepath of all csv 's in current dir
csv_files <- list.files(".", pattern = "*.csv")
list(csv_files)
all_files <- list.files(".")
list(all_files)

not_csv_files = setdiff(all_files, csv_files)
list(not_csv_files)
length(not_csv_files)

length(csv_files)

for (i in 1: length(csv_files)) {
    print(i)
    print(csv_files[i])
    View(read.csv(csv_files[i], fileEncoding = "UTF-8-BOM"))

    print(not_csv_files[i])

    # If statement
    # if filename contains nex read in as a nexus file#
    # if filename contains tree read in as a tree file
    # otherwise read in as newick file


    if (grepl(not_csv_files[i], ".nex", fixed = TRUE)) {
        plot.phylo(read.nexus(not_csv_files[i]))
    } else if ( grepl(not_csv_files[i], ".tree", fixed = TRUE)) {
        plot.phylo(read.tree(not_csv_files[i]))
    } else {
        plot.phylo(read.newick(not_csv_files[i]))
    }

}
