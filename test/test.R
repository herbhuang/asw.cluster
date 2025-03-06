# load the package

source("R/asw.cluster.collection_2.10.3.R")

# load sample data
mycategorialdata <- data.frame(teamid = c(rep(1,3),rep(2,4),rep(3,5)), 
                               age = factor(c("40 to 50","18 to 25","40 to 49","30 to 39","30 to 39",
                                       "50 to 59","18 to 25", "18 to 25","30 to 39",
                                       "40 to 49", "50 to 59","50 to 59")), 
                               gender = factor(c("f","m","f","f","m","f","f","f","m","m","m","m")), 
                               ethnicity = factor(c("A","B","A","D","C","B","A","A","B","B","C","C")),
                               cate = factor(c("A","B","H","D","H","B","H","A","H","H","C","C")))

my_cat_attr <- c("nominal", "nominal", "nominal", "nominal")

# run the faultlines function

my_FLS <- faultlines(data = mycategorialdata, 
                     group.par = "teamid", 
                     attr.type = my_cat_attr, 
                     method = "shaw")

# quick see
my_FLS
#my_FLS[1]

# print out FLS for each dimension
sum_FLS <- summary(my_FLS)
sum_FLS
sum_FLS$fltab
