library(reprex)
library(ggplot2)

#### Example 1: copy and paste

# copy this
y <- 1:4
mean(y)

# run reprex
reprex()

# preview in RStudio viewer

# paste (into GitHub issue)


#### Example 2: Code with an error, can still create reprex
lm(disp ~ var, data = mtcars) # no 'var' variable in mtcars

# select and use addin

# paste

### Praise example
# run this code
library(praise)
template <- "${EXCLAMATION} - your reprex is ${adjective}!"
praise(template)

#### Example 3: missing package
# copy
template <- "${EXCLAMATION} - your reprex is ${adjective}!"
praise(template)

# run
reprex()

#### Example 4: missing object
# copy
library(praise)
praise(template)

# run
reprex()

### Example 5: All together now!
# copy
library(praise)
template <- "${EXCLAMATION} - your reprex is ${adjective}!"
praise(template)

# run
reprex()

### Example 6: plots! images!
# copy
library(ggplot2)
ggplot(mpg, aes(class)) +
  geom_bar()

# run
reprex()

# paste in GitHub issue


#### Example 6: in the function, GitHub output (default)

reprex(rbinom(3, size = 10, prob = 0.5))

# paste

#### Example 7: in the function, StackOverflow output

reprex(rbinom(3, size = 10, prob = 0.5), venue = "so")

# paste

#### Example 8: multi-line

reprex({
  x <- 1:4
  y <- 2:5
  x + y
})

# paste

#### Example 9: comments and saving to a file

demo_code <- c(
  "## a regular comment",
  "x <- 1:100",
  "#' Here is some embedded prose, as a roxygen comment.",
  "mean(x)"
)

md_content <-
  reprex(input = demo_code, outfile = "README-tmp_gh", show = FALSE)

# paste


# print to console
cat(demo_code, sep = "\n")

# open up md file


#### Example 10: markdown

reprex({
  #' # A Big Heading
  #'
  #' Look at my cute example. I love the
  #' [reprex](https://github.com/jennybc/reprex#readme) package!
  y <- 1:4
  mean(y)
})


#### Example 9: with sessionInfo

library(tidyverse)
library(palmerpenguins)
library(broom)

# run a lm
lm_fit <- lm(body_mass_g ~ . , data = penguins)

# use broom to clean it up
lm_augmented <- augment(lm_fit)
head(lm_augmented)

# Explore the fit of the model
ggplot(data = lm_augmented,
       aes(x = .fitted,
           y = body_mass_g)) + 
  geom_point() 


# run
reprex(si = TRUE)

#### Lots of other arguments/options
# For details
?reprex

