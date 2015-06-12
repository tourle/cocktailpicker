# Function 'picker' is defined to choose a cocktail drink based on 3 user inputs

    picker <- function(id1,id2,id3) {
                p <- paste(id1,id2,id3)
                if (p =="Strong Bright No") return('Blood orange punch. Recipe: http://www.bbcgoodfood.com/recipes/1621/drivers-punch
    ')
                if (p =="Strong Medium No") return('Pomegranate mojito. Recipe: http://www.bbcgoodfood.com/recipes/pomegranate-mojito-mocktail
    ')
                if (p =="Strong Minimal No") return('Mulled Apple juice. Recipe: http://www.bbcgoodfood.com/recipes/13370/mulled-apple-juice
    ')
                if (p =="Smooth Bright No") return('Tropical Fizz. Recipe: http://www.bbcgoodfood.com/recipes/2892/nonalcoholic-tropical-fizz
    ')
                if (p =="Smooth Medium No") return('Bonni Lassi. Recipe: http://www.bbcgoodfood.com/recipes/3128/bonny-lassi
    ')
                if (p =="Smooth Minimal No") return('Apple, Elderflower, Mint Sparkle. Recipe: http://www.bbcgoodfood.com/recipes/4638/apple-elderflower-and-mint-sparkle
    ')
                if (p =="Strong Bright Yes") return('Whisky Sour. Recipe: http://www.dailymail.co.uk/home/moslive/article-2114856/Cocktails-The-popular-20-Manhattan-Sea-Breeze.html
    ')
                if (p =="Strong Medium Yes") return('Manhattan. Recipe: http://www.dailymail.co.uk/home/moslive/article-2114856/Cocktails-The-popular-20-Manhattan-Sea-Breeze.html
    ')
                if (p =="Strong Minimal Yes") return('Bellini. Recipe: http://www.dailymail.co.uk/home/moslive/article-2114856/Cocktails-The-popular-20-Manhattan-Sea-Breeze.html
    ')
                if (p =="Smooth Bright Yes") return('Sea Breeze. Recipe: http://www.dailymail.co.uk/home/moslive/article-2114856/Cocktails-The-popular-20-Manhattan-Sea-Breeze.html
    ')
                if (p =="Smooth Medium Yes") return('Singapore Sling. Recipe: http://www.dailymail.co.uk/home/moslive/article-2114856/Cocktails-The-popular-20-Manhattan-Sea-Breeze.html
    ')
                if (p =="Smooth Minimal Yes") return('Mint Julep. Recipe: http://www.dailymail.co.uk/home/moslive/article-2114856/Cocktails-The-popular-20-Manhattan-Sea-Breeze.html
    ')  
        }
    
    # User input is presented back to the user with the answer.        
shinyServer(
        function(input, output) {
                output$oid1 <- renderPrint({input$id1})
                output$oid2 <- renderPrint({input$id2})
                output$oid3 <- renderPrint({input$id3})
                output$answer <- renderText({picker(input$id1, input$id2,input$id3)})

        }
)
