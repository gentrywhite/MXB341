#################################################################################
# This R script compiles one or all of the worksheets with specific parameters.
# Whilst you can knit the .Rmd documents individually, this code automates the
# process of making a question sheet and answer sheet at the same time with the
# correct naming conventions etc.
#
# Make sure you have the "withr" package installed and "tint".
#
#################################################################################

#### edit these before use ####

  #path_to_ws <- "~/Dropbox/QUT/MXB341/qut-mxb341-worksheets/"
  path_to_ws <- "/home/bon/code/qut-mxb341-worksheets/"

  knitr_params <- list(
    tutor_name = "Josh"
  )
  
  ws_file_prefix <- "mxb341-ws-"

####



#### Render questions and solutions function

render_qands <- function(dir, rmd_file, out_file, knitr_params){
  
  sols_file_name <- paste0("solutions-", out_file)
  
  # temporarily changes working directory so that links in docs are relative, not absolute
  withr::with_dir(
    new = dir,
    code =  {
            
        rmarkdown::render(input = file_name,
                          output_file = out_file,
                          params = c(knitr_params, show_solutions = F)
        )
        
        # knit worksheet answers
        rmarkdown::render(input = file_name,
                          output_file = sols_file_name,
                          params = c(knitr_params, show_solutions = T)
        )
        
      }
  )
  
  
}

####

#### Compile one file ####

  worksheet_number <- "10"
  
  upper_dir <- paste0("ws",worksheet_number)
  file_name <- paste0(ws_file_prefix, worksheet_number, ".Rmd")
  out_name <- paste0(ws_file_prefix, worksheet_number,".pdf")
  ws_dir <- paste(path_to_ws, upper_dir, sep = "/")
  
  # render questions and solutions
  render_qands(dir = ws_dir, 
               rmd_file = file_name, 
               out_file = out_name, 
               knitr_params = knitr_params
              )
    
    
####
  
  
#### Compile all files ####
  
  worksheet_numbers <- paste0("0",1:2)
  
  for(ws_num in worksheet_numbers){
    
    upper_dir <- paste0("ws",ws_num)
    file_name <- paste0(ws_file_prefix, ws_num, ".Rmd")
    out_name <- paste0(ws_file_prefix, ws_num,".pdf")
    ws_dir <- file.path(path_to_ws, upper_dir)
    
    render_qands(dir = ws_dir, 
                 rmd_file = file_name, 
                 out_file = out_name, 
                 knitr_params = knitr_params
    )
    
  }
  
####