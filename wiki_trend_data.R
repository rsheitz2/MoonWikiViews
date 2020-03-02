library(wikipediatrend)

df <- wp_trend(c("Full moon"),
               from = "2007-12-01-01", to = "2020-01-01-01")

cwd <- getwd()
write.csv(df, sprintf('%s/data/moon_wiki_views.csv', cwd) )