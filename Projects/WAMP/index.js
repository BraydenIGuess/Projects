var easy = false
var medium = false
var insane = false


function math(moremath)
{
    moremath = Math.floor(Math.random() * 6);
   console.log(moremath)
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
function timeoutandstuff()
{

}
function start()
{
    seconds = 30
     timer = setTimeout(seconds, 30)
    
    if (easy == true)
    {
        setInterval(math, 1500)
        med = false
        hard = false
        document.getElementById('start').disabled = true;

        
        
    }
    if (med == true)
    {
        setInterval(math,1000)
        document.getElementById('start').disabled = true;
    }
    if (hard == true)
    {
        setInterval(math, 500)
        document.getElementById('start').disabled = true;
    }
}


