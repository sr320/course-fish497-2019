---
layout: page
element: notes
title: Working with Tabular Data
language: R
---

> Remember to
>
> * download [`surveys.csv`](https://ndownloader.figshare.com/files/2292172).
> * download [`species.csv`](https://ndownloader.figshare.com/files/3299483).
> * Consider removing the `dplyr` package so you can demonstrate installing it.

### Packages

* Main way that reusable code is shared in R
* Combination of code, data, and documentation
* R has a rich ecosystem of packages for data manipulation & analysis
* Download and install packages with the R console:
    * `install.packages("dplyr")`
* Using a package:
    * Load all of the functions in the package: `library("dplyr")`

### Basic `dplyr`

* Modern data manipulation library for R


> * Start a new project (modeling good practice)

```
surveys <- read.csv("surveys.csv")
```

* Select:
    * `select(surveys, year, month, day)`
* Filter:
    * `filter(surveys, species_id == "DS")`
    * `filter(surveys, species_id == "DS", year > 1995)`
    * `filter(surveys, species_id == "DS" | species_id == "DM")`
* Mutate:
    * `mutate(surveys, hindfoot_length_cm = hindfoot_length / 10)`

> Do [Exercise 2 - Shrub Volume Data Basics]({{ site.baseurl }}/exercises/Dplyr-shrub-volume-data-basics-R).

### Aggregation

* Group by:
    * `group_by(surveys, species_id)`
    * Different looking kind of `data.frame`
        * Source, grouping, and data type information

```
surveys_by_species <- group_by(surveys, species_id)
```

* Grouping with `summarize()`:
    * `summarize(surveys_by_species, avg_weight = mean(weight))`
    * Real data problem:
        * `mean(weight)` when `weight` has missing values (`NA`)
            * Returns `NA`
            * `mean(weight, na.rm=TRUE)`

> Do [Exercise 3 - Shrub Volume Aggregation]({{ site.baseurl }}/exercises/Dplyr-shrub-volume-aggregation-R).

### Joins

* `inner_join` in `dplyr` works like `JOIN` in SQL

```
species <- read.csv("species.csv")
combined <- inner_join(surveys, species, by = "species_id")
head(combined)
```

> Do [Exercise 4 - Shrub Volume Join]({{ site.baseurl }}/exercises/Dplyr-shrub-volume-join-R).

### Pipes

* Combine a series of data manipulation actions
* Intermediate variables
    * Step-wise approach
    * Can get cumbersome with lots of variable objects in the environment

```
surveys_DS <- filter(surveys, species_id == "DS")
surveys_DS_by_yr <- group_by(surveys_DS, year)
avg_weight_DS_by_yr <- summarize(surveys_DS_by_yr,
                                 avg_weight = mean(weight, na.rm=TRUE))
```

* Pipes:
    * Operator:
        * `%>%`
    * Operation:
        * `%>%` takes the output of one command and passes it as input to the next command
        * `x %>% f(y)` translates to `f(x, y)`
        * `surveys %>% filter(species_id == "DS")`

```
surveys %>%
  filter(species_id == "DS") %>%
  group_by(year) %>%
  summarize(avg_weight = mean(weight, na.rm=TRUE))
```

> Do [Exercise 5 - Fix the Code]({{ site.baseurl }}/exercises/Dplyr-fix-the-code-R).
