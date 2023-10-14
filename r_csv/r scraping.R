library(rvest)
wiki_url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
html <- read_html(wiki_url)

table <- html_table(html, header = TRUE, fill = TRUE)
eg_table <- table[2]
eg_table
write.csv(eg_table, "C:/Users/Kyler/r_studio/r_csv\\output.csv", row.names = FALSE)