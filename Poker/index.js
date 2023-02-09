    arraything = []
lolma = 1
function pickcards()
{

    rndmnm = Math.floor(Math.random() * 53)
    console.log(rndmnm)
    if(rndmnm in arraything)
    {
        setTimeout(pickcards())
    }
    else
    {
        while(lolma <= 5)
        {
        document.getElementById(''+lolma+'').src = 'img/'+rndmnm+'.png'
        arraything.push(rndmnm)
        console.log(arraything)
        lolma++
        happiness = setInterval(pickcards(),3000)
        }
        
    }
}