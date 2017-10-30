require(tidyverse)
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
            sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "adult mass", y = "Newborn Mass") +
  geom_point()
# with log
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "adult mass", y = "newborn mass") + 
  scale_x_log10() +
  scale_y_log10() +
  geom_point()
ggplot(data = dat, aes(x = mass.g., y = newborn.g., color = order)) +
  labs(x = "adult mass", y = "newborn mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_point()
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "adult mass", y = "newborn mass") + 
  scale_x_log10() +
  scale_y_log10() +
  geom_point() +
  facet_wrap(~ order, nrow = 4, ncol = 5)