//setting variables 
var easy = false
var medium = false
var hard = false
var funnytimerhaha = 30
var hitamount = 1
var called0 = false
var called1 = false
var called2 = false
var called3 = false
var called4 = false
var called5 = false
ouch = null
notouch = null
help1 = null
help2 = null
// Making function that makes second image appear 
function popout()
{
    //random number generator
    let moremath = Math.floor(Math.random() * 6);
    console.log(moremath)
    //if statements check to see if the random number is equal to a corresponding number
    if (moremath == 0)
    {   //checks to see if the number has already been called
        if (called0 == false)
        {
        // changes image to the second image then sets a timer to get rid of it after 500ms
        document.getElementById('zero').src = 'img/2.png'
        setTimeout(() => {document.getElementById('zero').src = 'img/1.png'}, 500);
        //sets called to true
        called0 = true

        
        }
    }
    //checks if the random number is not equal to 0 
    if (moremath != 0)
    {   //sets called to false
        called0 = false
    }
    
    //if statements check to see if the random number is equal to a corresponding number
    if (moremath == 1)
    {   //checks to see if the number has already been called
        if (called1 == false)
        {        // changes image to the second image then sets a timer to get rid of it after 500ms
        document.getElementById('one').src = 'img/2.png'
        setTimeout(() => {document.getElementById('one').src = 'img/1.png'}, 500);
        called1=true        //sets called to true

        }
        }


    if (moremath != 1)
    {
        called1 = false
    }
        //if statements check to see if the random number is equal to a corresponding number
    if (moremath == 2)
    {   //checks to see if the number has already been called
        if (called2 == false)
        {        // changes image to the second image then sets a timer to get rid of it after 500ms
                 document.getElementById('two').src = 'img/2.png'
        setTimeout(() => {document.getElementById('two').src = 'img/1.png'},500);   
        called2 = true        //sets called to true
        }

    }
    if (moremath != 2)
    {
        called2 = false
    }
        //if statements check to see if the random number is equal to a corresponding number
    if (moremath == 3)
    {   //checks to see if the number has already been called
        if (called3 == false)
        {        // changes image to the second image then sets a timer to get rid of it after 500ms
        document.getElementById('three').src = 'img/2.png'
        setTimeout(() => {document.getElementById('three').src = 'img/1.png'},500); 
        called3 = true            //sets called to true     
        }

    }
    if (moremath != 3)
    {
        called3 = false
    }
        //if statements check to see if the random number is equal to a corresponding number
    if (moremath == 4)
    {   //checks to see if the number has already been called
        if (called4 == false)
        {        // changes image to the second image then sets a timer to get rid of it after 500ms
            document.getElementById('four').src = 'img/2.png'
            setTimeout(() => {document.getElementById('four').src = 'img/1.png'},500);
            called4 = true        //sets called to true
        }
    }
    if (moremath != 4)
    {
        called4 = false
    }
        //if statements check to see if the random number is equal to a corresponding number
    if (moremath == 5)
    {    //checks to see if the number has already been called
        if (called5 == false)
        {        // changes image to the second image then sets a timer to get rid of it after 500ms
        document.getElementById('five').src = 'img/2.png'
        setTimeout(() => {document.getElementById('five').src = 'img/1.png'}, 500);  
        called5 = true              //sets called to true   
        }

    }
    if (moremath != 5)
    {
        called5 = false
    }
}
//creates functions and has onclick onto button in html to set the mode to true and enables the start button while disabled the difficulty buttons
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



//creates a function that has if statements checking if a certain mode is true and if it is starts 2 timers one that starts a countdown and the other that makes the mole move
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
        help = setInterval(timeoutandstuff,1000)
        ouch = setInterval(popout, 1000)
        document.getElementById('start').disabled = true;
    }
    if (hard == true)
    {
        help = setInterval(timeoutandstuff,1000)
        notouch = setInterval(popout, 450)
        document.getElementById('start').disabled = true;
    }
}

//timeout function. counts down every one second by subtracting the variable funnytimerhaha and displaying it on the timer id
function timeoutandstuff()
{
    setTimeout(function(){
    document.getElementById('timer').innerHTML = funnytimerhaha--;
// once the timer hits zero it restarts all progress and enables everybutton while disabling the start button
    if (funnytimerhaha == 0)
        {

            document.getElementById('start').disabled = true;
            document.getElementById('easy').disabled = false;
            document.getElementById('med').disabled = false;
            document.getElementById('hard').disabled = false;
            funnytimerhaha = 30
            hitamount = 1
            clearInterval(help)
            clearInterval(fint)
            clearInterval(ouch)
            clearInterval(notouch)
            
        }
    })
        
        }

//6 individual functions that checks if the mole was clicked and whether what the user clicked was a mole
function hitcount0()
{
    if (document.getElementById('zero').src.match('img/2.png') )
    {
        document.getElementById('hits').innerHTML = hitamount++;
        console.log('hello world')
    }
}
function hitcount1()
{
    if (document.getElementById('one').src.match('img/2.png'))
    {
        document.getElementById('hits').innerHTML = hitamount++;
        console.log('hello world')
    }
}
function hitcount2()
{
    if (document.getElementById('two').src.match('img/2.png'))
    {
        document.getElementById('hits').innerHTML = hitamount++;
        console.log('hello world')
    }
}
function hitcount3()
{
    if (document.getElementById('three').src.match('img/2.png'))
    {
        document.getElementById('hits').innerHTML = hitamount++;
        console.log('hello world')
    }
}
function hitcount4()
{
    if (document.getElementById('four').src.match('img/2.png'))
    {
        document.getElementById('hits').innerHTML = hitamount++;
        console.log('hello world')
    }
}
function hitcount5()
{
    if (document.getElementById('five').src.match('img/2.png'))
    {
        document.getElementById('hits').innerHTML = hitamount++;
        console.log('hello world')
    }
}