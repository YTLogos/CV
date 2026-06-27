cache_data <- TRUE
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("index.rmd",
  params = list(pdf_mode = TRUE, cache_data = cache_data),
  output_file = tmp_html_cv_loc
)

# Convert to PDF using Pagedown

webshot2::webshot(
  url = tmp_html_cv_loc,
  file = "taoyan_cv.pdf",
  vwidth = 1200,
  delay = 2
)