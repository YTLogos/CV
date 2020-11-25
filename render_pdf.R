cache_data <- TRUE
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("index.rmd",
                  params = list(pdf_mode = TRUE, cache_data = cache_data),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = "taoyan_cv.pdf")

