shinyUI(pageWithSidebar(
        headerPanel("Personalised cocktail drink picker"),
        sidebarPanel(
                
#                 Cocktail picker user manual
#                 ------------------------------------
#                         
#                         The cocktail picker is a simple app that requires you to enter 3 choices from a user input form.
#                 
#                 - There is a menu selection input control for you to choose your personality type.
#                 The only options are: 'Strong' or 'Smooth'
#                 
#                 - There is a menu radio button input control for you to choose your colour preference.
#                 The only options are: 'Bright' or 'Medium' or 'Minimal'
#                 
#                 - There is a menu selection input control for you to choose your alcohol preference.
#                 The only options are: 'No' or 'Yes'
#                 
#                 The cocktail picker will process your choices and choose from a pre-defined list of 
#                 cocktail drinks to reactively present back to you a recommended drink for inspiration.
#                 
#                 Enjoy!
                
                # User input 1                
                    radioButtons("id1", label = h3("Personality"),               
                             choices = list("Strong", "Smooth")),
                
                # User input 2                
                    radioButtons("id2", label = h3("You like colours that are"), 
                             choices = list("Bright", "Medium","Minimal")),
                
                # User input 3
                    selectInput("id3", label = h3(
                        "Should the cocktail contain alcohol?"),             
                            choices = list("No" , "Yes" ))
                
        ),
        # This is what is presented back to the user
            mainPanel(
                h4('Based on your choices:'),   
                br(),
                textOutput("oid1"),
                br(),
                textOutput("oid2"),
                br(),
                textOutput("oid3"),
                br(),
                h3('Cocktail picker recommends:'),
                br(),
                verbatimTextOutput("answer")
                ))
)


