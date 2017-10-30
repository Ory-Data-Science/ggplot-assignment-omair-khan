require(tidyverse)
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

ggplot(data = dat, aes(x = F_mass)) +
  labs(x ="Female Mass (g)") +
  geom_histogram()


ggplot(data = dat, aes(x = F_mass)) +
  scale_x_log10() +
  labs(x = "female mass (g)") + 
  geom_histogram(fill = "blue")


ggplot(data = dat, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  scale_x_log10() +
  labs(x = "female mass (g)")


