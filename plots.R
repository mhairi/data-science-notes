library(ggplot2)
library(ggthemes)
library(ggrepel)
library(dplyr)


##############################
# Regular normal distrubtion #
##############################

norm_data <-
  data_frame(
    x = seq(-3, 3, length.out = 100),
    y = dnorm(x)
  ) 

ggplot(norm_data) +
  aes(x = x, y = y) +
  geom_density(stat = 'identity', fill = 'grey80', colour = 'white') +
  geom_segment(aes(x = 0, xend = 0,
                   y = 0, yend = 0.3987592),
                   colour = 'deeppink',
                   lineend = 'round') +
  scale_x_continuous(breaks = -3:3) +
  scale_y_continuous(breaks = NULL) +
  labs(x = '\nSample Mean', y = 'Probablity\n') +
  theme_bw(base_size = 12) 

#######################
# Confience Intervals #
#######################


ggplot(norm_data) +
  aes(x = x, y = y) +
  geom_density(stat = 'identity', fill = 'grey80', colour = 'white') +
  geom_density(data = filter(norm_data, x < -1.96),
               stat = 'identity', fill = 'grey20', colour = 'white') +
  geom_density(data = filter(norm_data, x > 1.96),
               stat = 'identity', fill = 'grey20', colour = 'white') +
  geom_segment(aes(x = 0, xend = 0,
                   y = 0, yend = 0.3987592),
               colour = 'deeppink',
               lineend = 'round') +
  geom_segment(aes(x = -1.2, xend = -1.2,
                   y = 0, yend = 0.3987592),
               colour = 'seagreen3',
               lineend = 'round') +
  scale_x_continuous(breaks = -3:3) +
  scale_y_continuous(breaks = NULL) +
  labs(x = 'Mean', y = 'Probablity\n') +
  theme_bw(base_size = 12) 


norm_data <-
  data_frame(
    x = seq(-3, 3, length.out = 100),
    y = dnorm(x)
  ) 


ggplot(norm_data) +
  aes(x = x, y = y) +
  geom_density(stat = 'identity', fill = 'grey80', colour = 'white') +
  geom_density(data = filter(norm_data, x < -1.96),
               stat = 'identity', fill = 'grey20', colour = 'white') +
  geom_density(data = filter(norm_data, x > 1.96),
               stat = 'identity', fill = 'grey20', colour = 'white') +
  geom_segment(aes(x = 0, xend = 0,
                   y = 0, yend = 0.3987592),
               colour = 'deeppink',
               lineend = 'round') +
  geom_segment(aes(x = -1.2, xend = -1.2,
                   y = 0, yend = 0.3987592),
               colour = 'seagreen3',
               lineend = 'round') +
  scale_x_continuous(breaks = -3:3) +
  scale_y_continuous(breaks = NULL) +
  labs(x = 'Mean', y = 'Probablity\n',
       caption = 'A sample mean is likley to lie close to the true population mean.') +
  theme_bw(base_size = 12) 

