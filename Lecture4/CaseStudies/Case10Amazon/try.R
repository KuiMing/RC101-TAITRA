library(xml2)

doc <- xml2::read_html("http://www.amazon.com/s/ref=nb_sb_noss_1?field-keywords=ddr4")
doc %>% html_nodes(xpath = "//a[@class='a-link-normal s-access-detail-page  a-text-normal']") %>% xml2::xml_attr("href")

link_tails = doc %>% html_nodes(xpath = "//a[@class='a-link-normal s-access-detail-page  a-text-normal']") %>% xml2::xml_attr("href")
links = sprintf("http://www.amazon.com%s",link_tails)

prod_names = doc %>% html_nodes(xpath = "//a[@class='a-link-normal s-access-detail-page  a-text-normal']") %>% xml2::xml_text()
prod_names
