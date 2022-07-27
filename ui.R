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
    tabItems(
      tabItem(tabName = "AA2Codon",
              h2("AA2Codon"),
              HTML("<i><h4>A tiny shiny app that calculates possible codons given a selection of amino acids</h4></i>"),
              fluidRow(
                box(HTML('<a href="AA2Cod">Access app</a>'))
              )
      ),
      tabItem(tabName = "MultiplePrimerEntry",
              h2("MultiplePrimerEntry")
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
