library(shinydashboard)

dashboardPage(
  dashboardHeader(title = 'Fürstlab Shiny Apps'),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Tiny Shiny Bio Tools", tabName = "Tiny Shiny Bio Tools", icon = icon("wrench"), startExpanded = TRUE, 
               menuSubItem("AA2Codon", "AA2Codon"),
               menuSubItem("MultiplePrimerEntry", "MultiplePrimerEntry")
      ),
      menuItem("Other", tabName = "Other", icon = icon("th"), startExpanded = TRUE,
               menuSubItem("TweetRial", "TweetRial"),
               menuSubItem("WordleBattle", "WordleBattle")
      ),
      menuItem("Group-internal", tabName = "Group-internal", icon = icon("key"), startExpanded = TRUE,
               menuSubItem("AFAS", "AFAS"),
               menuSubItem("AlphaFold", "AlphaFold"),
               menuSubItem("GroupStack", "GroupStack")
      )
    )
  ),
  dashboardBody(
    tags$head(
      tags$style(HTML("
      .frame {
        width: 50vw;
        border: 3px solid white;
        background: #eee;
        margin: auto;
        padding: 15px 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    img {
      width: 100%;
      height: 100%;
    }"))
    ),
    tabItems(
      tabItem(tabName = "AA2Codon",
              h2("AA2Codon"),
              HTML("<i><h4>A tiny shiny app that calculates possible codons, given a selection of amino acids</h4></i>"),
              div(class = 'frame', 
                  tags$a(
                  href="AA2Cod", 
                  tags$img(src="/AA2Cod.png", 
                           title="Access App", 
                           width="60%")
              ))
      ),
      tabItem(tabName = "MultiplePrimerEntry",
              h2("MultiplePrimerEntry"),
              HTML("<i><h4>A tiny shiny app that conveniently converts variable input of primer names and sequences to a copy and paste ready output for various vendor platforms.</h4></i>"),
              div(class = 'frame', 
                  tags$a(
                    href="AA2Cod", 
                    tags$img(src="/MPI.png", 
                             title="Access App", 
                             width="60%")
                  ))
      ),
      ),
      tabItem(tabName = "TweetRial",
              h2("TweetRial")
      ),
      tabItem(tabName = "WordleBattle",
              h2("WordleBattle")
      ),
      tabItem(tabName = "AFAS",
              h2("AFAS")
      ),
      tabItem(tabName = "AlphaFold",
              h2("AlphaFold")
      ),
      tabItem(tabName = "GroupStack",
              h2("GroupStack")
      )
    )
  )
)
