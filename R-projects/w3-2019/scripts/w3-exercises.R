

# This is me trying to execute the 9 exercises.


# 1-- Basic Expressions --

2 - 10
3 * 5
9 / 2
5 - 3 * 2
(5 - 3) * 2
4 ** 2
8 / 2 ** 2

print(2-10)



# 2 -- Basic Variables --

mass_kg <- 2.62
mass_g <- mass_kg * 1000
print(mass_g)


mass_lb <- 334
mass_kg <- mass_lb / 2.2046
print(mass_kg)


# 3 -- More Variables --
# Calculate a total biomass in grams for 3 large Pacific oysters (Crassostrea gigas) and then convert it to kilograms. The total biomass is three times the average size of a single individual. An average individual weighs 250 grams.


indiv_mass_g <- 250
number <- 3
biomass <- indiv_mass_g * number
biomass_kg <- biomass / 1000
print(biomass_kg)
biomass_kg



# 4 Built in Functions 

help(round)

abs(-15.5)
round(4.483847, digits = 2)
round(3.8)
toupper("species")




# CODE SHUFFLE 
#  Rearrange the following program so that it:

# Imports the data
# Calculates the average precipitation in each month across years
# Plots the monthly averages as a simple line plot
# Finally, add a comment above the code that describes what it does. The comment character in R is #.
plot(monthly_mean_ppt, type = "l", xlab = "Month", ylab = "Mean Precipitation")
monthly_mean_ppt <- colMeans(ppt_data)
ppt_data <- read.csv("data/gainesville-precip.csv", header = FALSE)


#Imports the data
ppt_data <- read.csv("data/gainesville-precip.csv", header = FALSE)

#Calculates the average precipitation in each month across years


plot(monthly_mean_ppt, type = "l", xlab = "Month", ylab = "Mean Precipitation")



#-- Bird Banding --


number_of_birds <- c(28, 32, 1, 0, 10, 22, 30, 19, 145, 27, 
                     36, 25, 9, 38, 21, 12, 122, 87, 36, 3, 0, 5, 55, 62, 98, 32, 
                     900, 33, 14, 39, 56, 81, 29, 38, 1, 0, 143, 37, 98, 77, 92, 
                     83, 34, 98, 40, 45, 51, 17, 22, 37, 48, 38, 91, 73, 54, 46,
                     102, 273, 600, 10, 11)

length(number_of_birds)

number_of_birds[42]


number_of_birds[length(number_of_birds)]

sum(number_of_birds)

min(number_of_birds)



#8 Shrub Volume vectors 

length <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9)
width <- c(1.3, 2.2, 1.5, 4.5, 3.1, 2.8, 1.8, 0.5, 2.0, 2.7)
height <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2)

length*width*height

sum(length*width*height)


#A vector of the height of shrubs with lengths greater than 2.5.

length > 2.5 # will return logicals with TRUE for the indices that meet the condition

## so we can use this to select only the values above 50
height[length > 2.5]






