library(datasets)
data(mtcars)
head(mtcars, 5)

library(ggplot2)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per galon")+labs(x="Displacement",y="Miles per Galon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine

ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)