library(Admissions) # a private, local package
library(dplyr)
library(datapasta)

# create a small data set from private data
small_data <- MM_BY_STU %>%
  select(STU_ID, YEAR_MARK, DEPT_CLASS) %>%
  mutate(FLAGGED = YEAR_MARK < 60) %>%
  mutate(STU_ID = row_number()) %>%
  head(10)

# take a look
small_data

# paste it using `dpasta` from `datapasta package`
dpasta(small_data)

# assign in to `example_data` object

# look again
example_data

# copy and paste in questions