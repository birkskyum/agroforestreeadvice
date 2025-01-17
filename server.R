
server <- function(input, output, session) {
  
  # Reactive expression for the selected language
  language <- reactive({
    input$in_language
  })
  
  # Flanders tree advice ----
  
  moduleTabInterface_Server( # nom de la fonction server du module
    
    id = "DENTRO", # Attention à bien donner le même id que dans ui !
    language= language,
    
    data = dataDENTRO, interface= interfaceDENTRO, functionSuitability=compute_suitability_DENTRO, compactobjectives=TRUE )
  
  
  # Shade tree advice ----
  
  moduleTabInterface_Server(id = "STA",
                            language= language,
                            data=dataSTA, interface=interfaceSTA, functionSuitability=compute_suitability_STA, compactobjectives=TRUE)
  
  
  # Deciduous ----
  
  moduleTabInterface_Server(id = "DECIDUOUS",
                            language= language,
                            data=dataDECIDUOUS, interface=interfaceDECIDUOUS, functionSuitability=compute_suitability_DECIDUOUS, compactobjectives=FALSE)
  
  # Species Climate Suitability Model ----
  
  moduleTabInterface_Server(id = "SCSM",
                            language= language,
                            data=dataSCSM, interface=interfaceSCSM, functionSuitability=compute_suitability_SCSM, compactobjectives=FALSE)
  
  
}

