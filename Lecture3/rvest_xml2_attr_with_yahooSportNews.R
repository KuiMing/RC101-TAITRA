library(rvest)
library(xml2)
rm(list=ls())

##################################
#           connector            #
##################################
doc <- xml2::read_html("https://tw.news.yahoo.com/sports/")

##################################
#             parser             #
##################################

doc %>% html_nodes(xpath = '//*[@id="mediablistmixedlpcatemp"]/div/ul/li[1]/div/a')
doc %>% html_nodes(xpath = '//*[@id="mediablistmixedlpcatemp"]/div/ul/li/div/a')

doc %>% html_nodes(xpath = '//*[@id="mediablistmixedlpcatemp"]/div/ul/li/div/a') %>% xml2::xml_attr("href")
doc %>% html_nodes(xpath = '//*[@id="mediablistmixedlpcatemp"]/div/ul/li/div/a') %>% rvest::html_attr("href")

