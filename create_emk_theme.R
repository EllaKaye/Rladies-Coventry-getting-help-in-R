library(xaringanthemer)

emk_colours <- list(
  pink = "#D40067",
  blue = "#0079D1",
  pale = "#FDFCFA",
  dark = "#002B36",
  grey = "#586E75"
)

style_xaringan(
  background_color = emk_colours$pale,
  link_color = emk_colours$blue,
  header_color = emk_colours$pink,
  inverse_background_color = emk_colours$blue,
  text_font_google = google_font("Montserrat"),
  code_font_google = google_font("Fira Code"),
  inverse_text_color = emk_colours$pale,
  text_color = emk_colours$dark,
  text_bold_color = emk_colours$pink,
  code_inline_color = emk_colours$grey,
  footnote_color = emk_colours$pink,
  text_slide_number_color = emk_colours$grey,
  colors = c(
    pink = "#D40067",
    blue = "#0079D1",
    pale = "#FDFCFA",
    dark = "#002B36",
    grey = "#586E75"
  )
)
