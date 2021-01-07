## Read in OHI Onboarding Schedule and prepare for gt
## Gives choice to load from Google Sheets and save to csv or just load csv
## https://docs.google.com/spreadsheets/d/1JCY6DIeNs1NjouehLYm32Ulq2XCOCaWx5vBpuhsgKbg/edit#gid=0

## load_from_gsheets is assigned as TRUE or FALSE in individual Rmd Chapters

## load libraries


## Tidy

## Create and format GT table

  
create_ohi_gt <- function(wrangled_dt) {
  sched_gt <- wrangled_dt %>%
    gt() %>%
    tab_header(title = "OHI Onboarding Roadmap") %>%
    tab_style(cell_text(align = "left", weight = "bold"), locations = cells_title()) %>%
    tab_style(cell_fill("grey97"), locations = cells_row_groups()) %>%
    tab_style(cell_fill("grey97"), 
              locations = cells_column_labels(columns = gt::everything())) %>% # troubleshooted for hours: jihongzhang.org/post/study-notes-gt-package-and-format-table/
    tab_style(cell_text(weight = "bold"), 
              locations = cells_column_labels(columns = gt::everything())) %>%
    tab_style(cell_fill("white"), locations = cells_body()) %>%
    tab_style(cell_text(indent = pct(1.5)), locations = cells_body()) %>%
    tab_style(cell_text(weight = "bold"), locations = cells_row_groups()) 
  return(sched_gt)
}


