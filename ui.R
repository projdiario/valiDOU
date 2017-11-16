fluidPage(id = "primdiv",
  useShinyjs(),
  extendShinyjs(text = jsCode),
  tags$head(
    tags$link(href = 'validador.css', type = "text/css", rel = 'stylesheet', media = 'all'),
    tags$script(src = "./js/editor.js"),
    tags$script(src = "./js/tinymce/tinymce.min.js"),
    tags$script(src = "./js/navbar.js")
  ),
  tags$div(id = "navbar", class="navbar-fixed-top",
          tags$div(
                   tags$li(id = "webname", class = "navbar-brand", href = "#", "Validador"),
                   tags$li(actionButton(class = "btn btn-default navbar-btn", "nova",
                                        "Inserir nova norma", icon = icon('file', lib = 'glyphicon'))),
                   tags$li(actionButton(class = "btn btn-default navbar-btn", "alteracao",
                                        "Alterar norma", icon = icon('file', lib = 'glyphicon')))),
          tags$li(class = "navbar-right", textOutput('info'))
  ),
  fluidRow(class = "main", 
      column(6,
             id = "coluna1",
             textOutput('pag'),
             a(id = "toggleMeta", "Mostrar/esconder meta informações", href = "#"),
             uiOutput('meta_info'),
             tags$div(id = "norm-btns",
                      actionButton("aceita", "Aceitar", class = "btn-custom1 green",
                                   icon = icon("ok", lib = "glyphicon")),
                      actionButton("pula", "Decidir depois", class = "btn-custom1",
                                   icon = icon("hourglass", lib = "glyphicon")),
                      actionButton("recusa", "Recusar", class = "btn-custom1 red",
                                   icon = icon("remove", lib = "glyphicon"))),
             uiOutput('editor')
      ),
      column(6,
             id = "coluna2",
             fluidRow(id = "pag-pdf",
                      numericInput('pag_pdf', 'Página:', value = 1, min = 1)),
             uiOutput('pdf')
      )
  ),
  fluidRow(textInput('entrada', 'Teste de texto', ''), style = 'display:none;')
)