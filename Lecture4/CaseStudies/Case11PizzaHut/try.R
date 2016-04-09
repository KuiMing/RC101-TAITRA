library(httr)

res1 = GET("https://github.com/c3h3/thlib/blob/pizzahut/dev-ipynbs/pizzahut.ipynb")
res1$cookies

res2 = GET("http://www.pizzahut.com.tw/place/?parent_id=cdsp&a=a")
res2$cookies

res3 = GET("http://www.pizzahut.com.tw/place/show_map2.php?ccity=%E5%8F%B0%E5%8C%97%E5%B8%82&czone=0")
html_text <- content(res3,as = "text",encoding = "utf8")

library(xml2)
library(rvest)
doc <- xml2::read_html(html_text)
doc %>% rvest::html_table()

tables <- doc %>% rvest::html_table()

View(tables[[1]])
