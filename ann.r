install.package("neuralnet")
library(neuralnet)
data(trees)
mydata<-trees
answer <- rep(0,31)
mydata$answer <- answer
model1 = neuralnet(answer ~ Volume+Girth+Height, data = mydata, hidden = 1, err.fct="sse", linear.output = FALSE)
plot(model1)
