library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "Shiny Apps by Fürstlab",
                  tags$li(a(href = 'http://www.fuerstlab.com',
                            img(src = 'logo_wide_next.png',
                                title = "Shiny Apps by Fürstlab", height = "100px"),
                            style = "padding-top:10px; padding-bottom:10px;"),
                          class = "dropdown")),
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
      tags$style(HTML(
        '.customHeader { 
        font-size: 11px;
        line-height: 50px;
        text-align: left;
        font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        padding: 0 15px;
        overflow: hidden;
        color: red;
      }
    ')),
      tags$style(HTML("
      .frame {
        width: 70vw;
        border: 3px solid white;
        background: #eee;
        margin: auto;
        padding: 15px 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      }
     .frame2 {
        width: 45vw;
        border: 3px solid white;
        background: #eee;
        margin: auto;
        padding: 15px 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
     }
     .frame3 {
        height: 75vh;
        width: 47vh;
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
    tags$script(HTML('
      $(document).ready(function() {
        $("header").find("nav").append(\'<span class="customHeader"> <a href = "https://www.fuerstlab.com"><font color ="white">Scientific and non-scientific apps made by Max.</font></a> </span>\');
      })
     ')),
    tabItems(
      tabItem(tabName = "AA2Codon",
              h2("AA2Codon"),
              HTML("<i><h4>A tiny shiny app that calculates possible codons, given a selection of amino acids</h4></i>"),br(),
              div(class = 'frame', 
                  tags$a(
                  href="AA2Cod", 
                  tags$img(src="/AA2Cod.png", 
                           title="Access App", 
                           width="80%")
              ))
      ),
      tabItem(tabName = "MultiplePrimerEntry",
              h2("MultiplePrimerEntry"),
              HTML("<i><h4>A tiny shiny app that conveniently converts variable input of primer names and sequences to a copy and paste ready output for various vendor platforms.</h4></i>"),br(),
              div(class = 'frame', 
                  tags$a(
                    href="MultiplePrimers", 
                    tags$img(src="/MPI.png", 
                             title="Access App", 
                             width="80%")
                  ))
      ),
      tabItem(tabName = "TweetRial",
              h2("TweetRial"),
              HTML("<i><h4>A tiny shiny app to prepare tweetorials (twitter threads).</h4></i>"),br(),
              div(class = 'frame', 
                  tags$a(
                    href="tweetRial", 
                    tags$img(src="/TweetRial.png", 
                             title="Access App", 
                             width="80%")
                  ))
      ),
      tabItem(tabName = "WordleBattle",
              h2("WordleBattle"),
              HTML("<i><h4>A not so tiny shiny app to play a game inspired by the legendary wordle.</h4></i>"),br(),
              div(class = 'frame2', 
                  tags$a(
                    href="wordle_battle_en", 
                    tags$img(src="/wb.png", 
                             title="Access App", 
                             width="50%")
                  ))
      ),
      tabItem(tabName = "AFAS",
              h2("AFAS"),
              HTML("<i><h4>A tiny shiny app to search the internal webshop catalogue for purchasing.</h4></i>"),br(),
              div(class = 'frame', 
                  tags$a(
                    href="AFAS", 
                    tags$img(src="/AFAS.png", 
                             title="Access App", 
                             width="80%")
                  ))
      ),
      tabItem(tabName = "AlphaFold",
              h2("AlphaFold"),
              HTML("<i><h4>A tiny shiny app to submit Alphafold prediciton jobs to the computer cluster.</h4></i>"),br(),
              div(class = 'frame2', 
                  tags$a(
                    href="AF_on_cluster", 
                    tags$img(src="/AF.png", 
                             title="Access App", 
                             width="80%")
                  ))
      ),
      tabItem(tabName = "GroupStack",
              h2("GroupStack"),
              HTML("<i><h4>Our internal stackoverflow-like Q&A site.</h4></i>"),br(),
              div(class = 'frame3', 
                  tags$a(
                    href="https://stackoverflow.com/c/rug-comp-biotech/questions", 
                    tags$img(src="/SO.png", 
                             title="Access App")
                  ))
      )
    )
  )
)
