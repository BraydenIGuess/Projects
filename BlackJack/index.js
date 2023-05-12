dealercard = 1 
ran = false
var local = false
player = 1
var sum;
var face_cards = ["aceclubs.png","acediamonds.png","acehearts.png","acespades.png","jackclubs.png", "jackdiamonds.png", "jackhearts.png", "jackspades.png", "kingclubs.png", "kingdiamonds.png", "kinghearts.png", "kinghearts.png", "kingspades.png", "queenclubs.png", "queendiamonds.png", "queenhearts.png", "queenspades.png"]
values = ["2","2","2","2","3","3","3","3","4","4","4","4","5","5","5","5","6","6","6","6","7","7","7","7","8","8","8","8","9","9","9","9","10","10","10","10"]
values2 = ["11","11","11","11","10","10","10","10","10","10","10","10","10","10","10","10","10",]




function randomcards(sum, dvalue)
{
    random = Math.floor(Math.random() * 51)
    random2 = Math.floor(Math.random() * 15)
    document.getElementById("hitme").disabled = false
    document.getElementById("stand").disabled = false  
    document.getElementById("startgame").disabled = true  
    if(ran == false)

    {

        dealerdom = Math.floor(Math.random() * 51)
        dealerdomfacecard = Math.floor(Math.random() * 15)

        if(dealerdom >= 36)
        {
            document.getElementById("dealer2").src = "img/"+face_cards[dealerdomfacecard]
            dvalue = values2[dealerdomfacecard]
            ran = true
            document.getElementById("dvalueocards").innerHTML = dvalue


        }
        else
        {
            document.getElementById("dealer2").src = "img/"+dealerdom+".png"
            dvalue = values[dealerdom]
            document.getElementById("dvalueocards").innerHTML = dvalue

        }
        player = 1
        if(random >= 36)
        {
            
            document.getElementById("player"+player).src = "img/"+face_cards[random2]
            player++
            value1 = values2[random2]
            random = Math.floor(Math.random() * 51)
            ran = true



            if(random >= 36)
            {
                random2 = Math.floor(Math.random() * 15)
                document.getElementById("player"+player).src = "img/"+face_cards[random2]
                value2 = values2[random2]
                 sum = +value1 + +value2


                 player++
                 ran = true
                document.getElementById("valueocards").innerHTML = sum
            }


            else
            {
                document.getElementById("player"+player).src = "img/"+random+".png"
                value2 = values[random]        
                 sum =  +value1 + +value2
                ran = true

                 player++
                document.getElementById("valueocards").innerHTML = sum
                
            }
            if(sum == 21)
            {
                document.getElementById("valueocards").innerHTML = "You Won!"
            }
            ran = true
        }


        else
        {
            document.getElementById("player"+player).src = "img/"+random+".png"
            player++
            value1 = values[random]
            randomer = Math.floor(Math.random() * 51)


            if(randomer >= 36)
            {
                randomer2 = Math.floor(Math.random() * 15)
                document.getElementById("player"+player).src = "img/"+face_cards[randomer2]
                value2 = values2[randomer2]
               sum = +value1 + +value2

               player++
            }

            else
            {

                document.getElementById("player"+player).src = "img/"+randomer+".png"
                value2 = values[randomer]
                sum = +value1 + +value2
                player++

                
            }

            document.getElementById("valueocards").innerHTML = sum
            ran = true

        }
     
    }// end of ran
    else
    {
        document.getElementById("player1").src = "img/back.png"
        document.getElementById("player2").src = "img/back.png"
        document.getElementById("player3").src = ""
        document.getElementById("player4").src = ""
        document.getElementById("player4").src = ""
        document.getElementById("dealer1").src = "img/back.png"
        document.getElementById("dealer2").src = "img/back.png"
        document.getElementById("dealer3").src = ""
        document.getElementById("dealer4").src = ""
        ran = false
        player = 1
        dealercard = 1
        document.getElementById("hitme").disabled = false
        document.getElementById("stand").disabled = false
        
        randomcards()
    }
    
    sum = sum
    dealervalue = dvalue
    console.log(sum)
}

function hitMe(sum, local)
{
    sum = sum
    if(local == true)
    {
    randomest = Math.floor(Math.random() * 51)
    randomest2 = Math.floor(Math.random() * 15)
    console.log(randomest)

        if(randomest >= 36)
        {
        console.log(player)
        document.getElementById("player"+player).src = "img/"+face_cards[randomest2]
        sumation = +sum + +values[randomest2]
        console.log(sumation)
        player++
        if(sumation > 21)
        {
            document.getElementById("valueocards").innerHTML = "you busted!"
            document.getElementById("hitme").disabled = true
            document.getElementById("stand").disabled = true
        }            
        }
        else
        {
            console.log(sum+" notfacecard")
            console.log(player)

            document.getElementById("player"+player).src = "img/"+randomest+".png"        
            sumation = +sum + +values[randomest]
            player++


            if(sumation > 21)
            {
                document.getElementById("valueocards").innerHTML = "you busted!"
                console.log("lol")
                document.getElementById("hitme").disabled = true
                document.getElementById("stand").disabled = true
            }   
            else{
                console.log(player)
                document.getElementById("valueocards").innerHTML = sumation
            }      
        }// end of else statement


    }

}


function stand(dvalue, stand1)
{
    document.getElementById("startgame").disabled = false
    if(stand1 == true)
    {
        document.getElementById("hitme").disabled = true
        document.getElementById("stand").disabled = true

    
    dealerdomshowncard = Math.floor(Math.random() * 51)
    dealerdomsface = Math.floor(Math.random() * 15)
    if(dealerdomshowncard >= 36)
    {
        
        document.getElementById("dealer"+dealercard).src = "img/"+face_cards[dealerdomsface]
        unshownvalue = +values2[dealerdomsface]
        console.log(unshownvalue)
        dealervalue = +dvalue + unshownvalue
        console.log(dealervalue)
        document.getElementById("dvalueocards").innerHTML = dealervalue
        dealercard++
        dealercard++
        if(dealervalue <= 16)
        {

            dealerdomshowncard1 = Math.floor(Math.random() * 51)
            dealerdomsface1 = Math.floor(Math.random() * 15)
            if(dealerdomshowncard1 >= 36)
            {
                document.getElementById("dealer"+dealercard).src = "img/"+face_cards[dealerdomsface1]
                unshownvalue1 = +values2[dealerdomsface1]
                dealervalue1 = +dealervalue + unshownvalue1
                console.log(unshownvalue)
                console.log(dealervalue)
                document.getElementById("dvalueocards").innerHTML = dealervalue1

            }
            else
            {
                document.getElementById("dealer"+dealercard).src = "img/"+dealerdomshowncard1+".png"
                unshownvalue1 = +values[dealerdomshowncard1]
                dealervalue1 = +dealervalue + unshownvalue1
                document.getElementById("dvalueocards").innerHTML = dealervalue1
                stand(dvalue, stand)
            }

    }
    else
    {
        if(dealervalue > sum)
        {
        if(dealervalue > 21)
        {
            document.getElementById("dvalueocards").innerHTML = "Dealer busted!"
        }
        else
        {
            document.getElementById("dvalueocards").innerHTML = "Dealer Won!"
        }

    }
        else
        {
           if(dealervalue > 21)
           {
    document.getElementById("valueocards").innerHTML = "You Busted!"
           }
           else
           {
            document.getElementById("valueocards").innerHTML = "You Won!"
            document.getElementById("hitme").disabled = true
            document.getElementById("stand").disabled = true
            document.getElementById("startgame").disabled = false
           }
        }
    }
    
    }
    else
    {
        document.getElementById("dealer"+dealercard).src = "img/"+dealerdomshowncard+".png"
        unshownvalue = +values[dealerdomshowncard]
        dealervalue = +dealervalue + unshownvalue
        document.getElementById("dvalueocards").innerHTML = dealervalue 
        dealercard++
        dealercard++
        if(dealervalue <= 16)
        {
            console.log("de")
            dealerdomshowncard1 = Math.floor(Math.random() * 51)
            dealerdomsface1 = Math.floor(Math.random() * 15)
            if(dealerdomshowncard1 >= 36)
            {
            document.getElementById("dealer"+dealercard).src = "img/"+face_cards[dealerdomsface1]
            unshownvalue1 = +values2[dealerdomsface1]
            dealervalue1 = +dealervalue + unshownvalue1
            document.getElementById("dvalueocards").innerHTML = dealervalue1
            console.log(unshownvalue1)
            console.log(dealervalue1)
            console.log(dealervalue)
            

            }
            else
            {
             document.getElementById("dealer"+dealercard).src = "img/"+dealerdomshowncard1+".png"
             unshownvalue1 = +values[dealerdomshowncard1]
             dealervalue1 = +dealervalue + unshownvalue1
             document.getElementById("dvalueocards").innerHTML = dealervalue1   
        
             console.log(unshownvalue1)
             console.log(dealervalue1)
             console.log(dealervalue)
            }

        }
        else
        {
            if(dealervalue > sum)
            {
                if(dealervalue > 21)
                {
                    document.getElementById("dvalueocards").innerHTML = "Dealer Busted!"
                }
                else
                {
                    document.getElementById("dvalueocards").innerHTML = "Dealer Won!"
                }
                
            }
            else
            {
                if(sum > 21)
                {
                    document.getElementById("valueocards").innerHTML = "You Busted!"
                }
                else
                {
                    document.getElementById("valueocards").innerHTML = "You Won!"
                }
            }
        }


    }


}
}