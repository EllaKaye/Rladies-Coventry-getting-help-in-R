library(xaringanthemer)

emk_colours <- list(
  pink = "#D40067",
  blue = "#0079D1",
  pale1 = "#FDFCFA",
  pale2 = "#FDFBF0",
  dark1 = "#002B36",
  dark2 = "#073642",
  grey = "#586E75"
)

style_xaringan(
  background_color = emk_colours$pale1,
  link_color = emk_colours$blue,
  header_color = emk_colours$pink,
  inverse_background_color = emk_colours$blue,
  code_font_google = google_font("Fira Code"),
  inverse_text_color = emk_colours$pale1,
  text_color = emk_colours$dark1,
  #text_bold_color = emk_colours$dark1,
  code_inline_color = emk_colours$dark1,
  footnote_color = emk_colours$pink,
  text_slide_number_color = emk_colours$grey
)
