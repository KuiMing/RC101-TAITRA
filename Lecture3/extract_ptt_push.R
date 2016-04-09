library(xml2)
library(xmlview)
library(magrittr)

doc <- xml2::read_html("https://www.ptt.cc/bbs/Stock/M.1452818794.A.FEC.html",encoding = "UTF-8")
xml_view(doc, add_filter = TRUE)

# doc_string <- as.character(doc) %>% `Encoding<-`("UTF-8")
# xml_view(doc_string, add_filter = TRUE)


doc %>% 
  rvest::html_nodes(xpath = '//span[@class="f3 push-content"]') %>% 
  rvest::html_text() %>% 
#   `Encoding<-`("UTF-8") %>% 
  gsub("^: ", "",.)


doc %>% 
  rvest::html_nodes(css = 'span.push-content') %>% 
  rvest::html_text() %>% 
  #   `Encoding<-`("UTF-8") %>% 
  gsub("^: ", "",.)
