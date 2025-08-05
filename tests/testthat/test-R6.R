test_that("R6 object works", {
  ext <- c("css", "js", "json", "html")
  for (i in 1:length(ext)){
    fm <- FileManager$new()
    fm$original_file <- minifyr::minifyr_example(ext = ext[i])
    expect_equal(tools::file_ext(fm$original_file), ext[i])
    fm$guess_minifier()
    expect_length(fm$minifier, 4)
    expect_equal(fm$minifier$ext, ext[i])
    fm$type <- ext[i]
    expect_null(fm$minified_file)
    fm$original_name <- basename(minifyr::minifyr_example(ext = ext[i]))
  }
})