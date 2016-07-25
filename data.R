
height <- c(133, 110, 224, 134, 135, 136, 125, 137, 104, 132, 114, 130, 129, 237, 131)
spinach_rating <- c(0,  1, -3,  0, -2,  0, -3,  1,  0, -3, -3,  3,  3,  0,  2)
kale_rating <- c(0,  1, -2,  1, -2,  0, -3,  -2,  0, -2, -3,  2,  3,  2,  0)
candy_floss_rating <- c(0, -2, 2, 0, 3, 0, 3, -3, 0, 3, 2, -2, -3, 0, -3)
chocolate_rating <- c(3, 3, 0, 3, -3, 3, 0, 2, 2, 2, 3, 3, 2, 3, 1)
gender <- c("Male", "Male", "Female", "Male", "Female", "Female", "Male", 
            "Male", "Female", "Female", "Male", "Female", "Male", "Female", 
            "Female")
age <- c("Adult", "Child", "Adult", "Adult", "Child", "Adult", "Child", 
         "Adult", "Child", "Child", "Child", "Adult", "Adult", "Adult", 
         "Adult")

df <- data.frame(height = height,
                 spinach_rating = spinach_rating,
                 chocolate_rating = chocolate_rating,
                 kale_rating = kale_rating,
                 candy_floss_rating = candy_floss_rating,
                 gender = gender,
                 age = age)

write.csv(df, 'spinach_data.csv')

