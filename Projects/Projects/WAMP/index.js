var easy = false
var medium = false
var hard = false
var funnytimerhaha = 30
var hitts = document.getElementById('hits')
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
    }
    if (moremath == 2)
    {
        if (called2 == false)
        {
                 document.getElementById('two').src = 'img/2.png'
        setTimeout(() => {document.getElementById('two').src = 'img/1.png'},500);   
        called2 = true
        }

    }
    if (moremath != 2)
    {
        called2 = false
    }
    if (moremath == 3)
    {
        if (called3 == false)
        {
        document.getElementById('three').src = 'img/2.png'
        setTimeout(() => {document.getElementById('three').src = 'img/1.png'},500); 
        called3 = true         
        }

    }
    if (moremath != 3)
    {
        called3 = false
    }
    if (moremath == 4)
    {
        if (called4 == false)
        {
            document.getElementById('four').src = 'img/2.png'
            setTimeout(() => {document.getElementById('four').src = 'img/1.png'},500);
            called4 = true
        }
    }
    if (moremath != 4)
    {
        called4 = false
    }
    if (moremath == 5)
    { 
        if (called5 == false)
        {
        document.getElementById('five').src = 'img/2.png'
        setTimeout(() => {document.getElementById('five').src = 'img/1.png'}, 500);  
        called5 = true         
        }

    }
    if (moremath != 5)
    {
        called5 = false
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

var lstn0 = document.getElementById('zero');
var lstn1 = document.getElementById('one');
var lstn2 = document.getElementById('two');
var lstn3 = document.getElementById('three');
var lstn4 = document.getElementById('four');
var lstn5 = document.getElementById('five');
function hitcountup()
{
    hitts = hitts++
    console.log('hitts')
}

function hitcount()
{
    if (lstn0.src == 'img/2.png')
    {
        lstn0.addEventListener("click", hitcountup)
        setTimeout(lstn0.removeEventListener, 500)
        console.log('hitts')
    }
    if (lstn1.src == 'img/2.png')
    {
        lstn1.addEventListener("click", hitcountup)
        setTimeout(lstn1.removeEventListener, 500)
    }

}
