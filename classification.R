library(party)


head(readingSkills)

input.dat <- readingSkills[1:105, ]

output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score,  
  data = input.dat
)


plot(output.tree)  

png("decision_tree.png")  
plot(output.tree)
dev.off()  