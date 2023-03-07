//use while statement to loop till finishes and add one once user correctly remembers sequence
    var number = 10
    funnynumber = 0
    var rndmvar = 1000
    var userarray = []
function main()
{




    function randomstuf()
    {
    var random = Math.floor(Math.random() * 4)
    console.log(random)
    randarray = []
    randarray.push(random)

    if(random == 0)
    {

        document.getElementById("red").src = "img/changed.jpg"
        setTimeout(function()
    {
        document.getElementById("red").src = "img/red.jpg"
    }, 1000)
    }
    if(random == 1)
    {
        document.getElementById("yellow").src = "img/changed.jpg"
        var letsgo1
        setTimeout(function()
    {
        document.getElementById("yellow").src = "img/yellow.jpg"
    }, 1000)
    clearTimeout(letsgo1)
    }
    if(random == 2)
    {
        document.getElementById("blue").src = "img/changed.jpg"
        var letsgo2
        setTimeout(function()
    {
        document.getElementById("blue").src = "img/blue.jpg"
    }, 1000)
    clearTimeout(letsgo2)
    }
    if(random == 3)
    {
        document.getElementById("green").src = "img/changed.jpg"
        var letsgo3
        setTimeout(function()
    {
        document.getElementById("green").src = "img/green.jpg"
    }, 1000)
    clearTimeout(letsgo3)
    }
    
}




for (let i = 0; i < number; i++)
{
    setTimeout(randomstuf,rndmvar)
    rndmvar = rndmvar + 1002
    console.log(rndmvar)
}



}
function red()
{
    userarray.push(0)
}
function yellow()
{
    userarray.push(1)
}
function blue()
{
    userarray.push(2)
}
function green()
{
    userarray.push(3)
    console.log(userarray)
}
function checker()
{
 if(randarry.includes(userarray))
 {
    console.log(userarray)
 }   
}