dealer1 = false
dealer2 = false
dealer3 = false
dealer4 = false
player1 = false
player2 = false
player3 = false
player4 = false
ran = false
var local = false
player = 1
var sum;
var face_cards = ["aceclubs.png","acediamonds.png","acehearts.png","acespades.png","jackclubs.png", "jackdiamonds.png", "jackhearts.png", "jackspades.png", "kingclubs.png", "kingdiamonds.png", "kinghearts.png", "kinghearts.png", "kingspades.png", "queenclubs.png", "queendiamonds.png", "queenhearts.png", "queenspades.png"]
values = ["2","2","2","2","3","3","3","3","4","4","4","4","5","5","5","5","6","6","6","6","7","7","7","7","8","8","8","8","9","9","9","9","10","10","10","10"]
values2 = ["11","11","11","11","10","10","10","10","10","10","10","10","10","10","10","10","10",]





function randomcards(sum)
{
    random = Math.floor(Math.random() * 51)
    random2 = Math.floor(Math.random() * 14)
    if(ran == false)
    {

        if(random >= 36)
        {
            
            document.getElementById("player"+player).src = "img/"+face_cards[random2]
            player++
            value1 = values2[random2]
            console.log(value1)
            random = Math.floor(Math.random() * 51)



            if(random >= 36)
            {
                random2 = Math.floor(Math.random() * 15)
                document.getElementById("player"+player).src = "img/"+face_cards[random2]
                value2 = values2[random2]
                 sum = +value1 + +value2
                 console.log(sum+", 1")
                 hitMe(sum = +value1 + +value2)
            }


            else
            {
                document.getElementById("player"+player).src = "img/"+random+".png"
                value2 = values[random]        
                 sum =  +value1 + +value2
                 console.log(sum+", 2")
                 hitMe(sum = +value1 + +value2)
                
            }

            document.getElementById("valueocards").innerHTML = sum
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
                randomer2 = Math.floor(Math.random() * 14)
                document.getElementById("player"+player).src = "img/"+face_cards[randomer2]
                value2 = values2[randomer2]
               sum = +value1 + +value2
               console.log(sum+", 3")
               hitMe(sum = +value1 + +value2)
            }

            else
            {

                document.getElementById("player"+player).src = "img/"+randomer+".png"
                value2 = values[randomer]
                sum = +value1 + +value2
                console.log(sum+", 4")
                hitMe(sum = +value1 + +value2)
                
            }

            document.getElementById("valueocards").innerHTML = sum
            ran = true

        }
     
    }// end of ran
    
variable1 = sum
player++
}

function hitMe(variable1, local)
{

    if(local == true)
    {
    randomest = Math.floor(Math.random() * 51)
    randomest2 = Math.floor(Math.random() * 14)

        if(randomest >= 36)
        {
        console.log(variable1)
        document.getElementById("player"+player).src = "img/"+face_cards[randomest2]
        sumation = +variable1 + +values[randomest2]
        console.log(sumation)
        if(sumation > 21)
        {
            document.getElementById("valueocards").innerHTML = "you busted!"
        }            
        }
        else
        {
            console.log(variable1+" notfacecard")
            console.log(player)
            document.getElementById("player"+player).src = "img/"+randomest+".png"        
            sumation = +variable1 + +values[randomest]
            player++

            if(sumation > 21)
            {
                document.getElementById("valueocards").innerHTML = sumation
                console.log("lol")
            }   
            else{
                console.log(player)
                document.getElementById("valueocards").innerHTML = sumation
                player++
            }      
        }// end of else statement


    }

    
}


