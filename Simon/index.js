function random()
{
    math = math.floor(math.random() * 4)
    console.log(math)
}

rndmarray = []
userarray = []
funny = null
unfunny = false

function red()
{
    funny = 1
    checks()
    console.log(funny)


}
function blue()
{
    funny = 2
    checks()


}
function yellow()
{
    funny = 3
    checks()


}
function green()
{
    funny = 4
    checks()


}

function checks()
{
    if( unfunny == false)
    {
        random()
        rndmarray.push(math)
        userarray.push(funny)
        console.log(math, 'userinput>', funny)
    }
}