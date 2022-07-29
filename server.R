library(shiny)
library(shinydashboard)

server <- function(input, output, session) {
  # Allow url parsing
  observe({
    query <- parseQueryString(session$clientData$url_search)
    if (!is.null(query)) {
      for (name in names(query)) {
        if (name == "tab") {
          # Change tab
          try(updateTabsetPanel(session, "tab_menu", selected = query[[name]]))
        } else {
          # Update inputs - this part is not really necessary if you just want to change the tabs, 
          # but I also needed to update other inputs from the url
          try(updateTextInput(session, name, value = query[[name]]), silent = TRUE)
        }
      }
    } 
  })
}
