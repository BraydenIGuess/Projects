var easy = false
var medium = false
var hard = false
var funnytimerhaha = 30
    var called0 = false
    var called1 = false
    var called2 = false
    var called3 = false
    var called4 = false
    var called5 = false
ouch = null
notouch = null
function popout()
{

    let moremath = Math.floor(Math.random() * 6);
    console.log(moremath)

    if (moremath == 0)
    {
        console.log(called0)
        if (called0 == false)
        {

        document.getElementById('zero').src = 'img/2.png'
        setTimeout(() => {document.getElementById('zero').src = 'img/1.png'}, 500);
        called0 = true

        
        }
    }
    if (moremath != 0)
    {
        called0 = false
    }
    

    if (moremath == 1)
    {
        console.log(called1)
        if (called1 == false)
        {
        document.getElementById('one').src = 'img/2.png'
        setTimeout(() => {document.getElementById('one').src = 'img/1.png'}, 500);
        called0=true

        }
        }


    if (moremath != 1)
    {
        called1 = false
        console.log(called1)
    }
    if (moremath == 2)
    {
        document.getElementById('two').src = 'img/2.png'
        setTimeout(() => {document.getElementById('two').src = 'img/1.png'},500);
    }
    if (moremath == 3)
    {
        document.getElementById('three').src = 'img/2.png'
        setTimeout(() => {document.getElementById('three').src = 'img/1.png'},500);
    }
    if (moremath == 4)
    {
        document.getElementById('four').src = 'img/2.png'
        setTimeout(() => {document.getElementById('four').src = 'img/1.png'},500);
    }
    if (moremath == 5)
    {
        document.getElementById('five').src = 'img/2.png'
        setTimeout(() => {document.getElementById('five').src = 'img/1.png'}, 500);
    }
}
function teasy()
{
   easy = true
   document.getElementById('start').disabled = false; 
   document.getElementById('easy').disabled = true;
   document.getElementById('med').disabled = true;
   document.getElementById('hard').disabled = true;
}
function mediumm()
{
    med = true
    document.getElementById('start').disabled = false; 
    document.getElementById('easy').disabled = true;
    document.getElementById('med').disabled = true;
    document.getElementById('hard').disabled = true;
}
function hardd()
{
    hard = true
    document.getElementById('start').disabled = false; 
    document.getElementById('easy').disabled = true;
    document.getElementById('med').disabled = true;
    document.getElementById('hard').disabled = true;
}




function start()
{
    if (easy == true)
    {
        help = setInterval(timeoutandstuff,1000)
        fint = setInterval(popout, 1500)
        med = false
        hard = false
        document.getElementById('start').disabled = true;

        
        
    }
    if (med == true)
    {
        help = setTimeout(timeoutandstuff,1000)
        ouch = setInterval(popout, 1000)
        document.getElementById('start').disabled = true;
    }
    if (hard == true)
    {
        help = setTimeout(timeoutandstuff,1000)
        notouch = setInterval(popout, 450)
        document.getElementById('start').disabled = true;
    }
}


function timeoutandstuff()
{
    setTimeout(function(){
    document.getElementById('timer').innerHTML = funnytimerhaha--;

    if (funnytimerhaha == 0)
        {

            document.getElementById('start').disabled = true;
            document.getElementById('easy').disabled = false;
            document.getElementById('med').disabled = false;
            document.getElementById('hard').disabled = false;
            funnytimerhaha = 30
            clearInterval(help)
            clearInterval(fint)
            clearInterval(ouch)
            clearInterval(notouch)
            
        }
    })
        
        }