library(dplyr)
library(plyr)
library(ggplot2)
library(palmerpenguins)
data(package = 'palmerpenguins')
penguins
penguins_raw
View(penguins)
View(penguins_raw)
str(penguins)
summary(penguins)
## 1 punto

ggplot(data = penguins)+
  geom_count(aes(x= sex, y = species))
table(penguins$sex, penguins$species)

## numero de especies##
length(penguins$species)

####media por especie##
penguins <- na.omit(penguins)

tapply(penguins$bill_length_mm, penguins$species, mean)
tapply(penguins$bill_depth_mm, penguins$species, mean)
tapply(penguins$flipper_length_mm, penguins$species, mean)
tapply(penguins$body_mass_g, penguins$species, mean)
#### Desviacion estandar##
tapply(penguins$bill_length_mm, penguins$species, sd)
tapply(penguins$bill_depth_mm, penguins$species, sd)
tapply(penguins$flipper_length_mm, penguins$species, sd)
tapply(penguins$body_mass_g, penguins$species, sd)
#### valor maximo##
tapply(penguins$bill_length_mm, penguins$species, max)
tapply(penguins$bill_depth_mm, penguins$species, max)
tapply(penguins$flipper_length_mm, penguins$species, max)
tapply(penguins$body_mass_g, penguins$species, max)
#### valor minimo##
tapply(penguins$bill_length_mm, penguins$species, min)
tapply(penguins$bill_depth_mm, penguins$species, min)
tapply(penguins$flipper_length_mm, penguins$species, min)
tapply(penguins$body_mass_g, penguins$species, min)





## 2 punto

penguins <- penguins %>%
  mutate(species = factor(species, levels = c('Adelie', 'Chinistrap', 'Gentoo')))

ggplot(data = penguins) +
  geom_count(aes(x = island, y = species))

table(penguins$island, penguins$species )

ggplot(data = penguins) +
  geom_bar(aes(x = island, fill = species))+
  scale_fill_manual(values = c("orange", "purple", "blue"))





#### 3 punto##

ggplot(data = penguins)+
  geom_boxplot(aes(x = species, y = body_mass_g, fill = sex ))