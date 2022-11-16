const blinklol = setInterval(Blinksmh, 5000)
  var eyepos = 1;
  function changeImage(){
    if(eyepos == 3){
        document.getElementById('chngImg').src = 'imgs/3.gif'
        document.getElementById('otherEye').src = 'imgs/3.gif'
      } 
      if(eyepos == 4){
          document.getElementById('chngImg').src = 'imgs/4.gif'
          document.getElementById('otherEye').src = 'imgs/4.gif'

      }



      if(eyepos == 5){
        document.getElementById('chngImg').src = 'imgs/5.gif'
        document.getElementById('otherEye').src = 'imgs/5.gif'
      } 

      if(eyepos == 6){
        document.getElementById('chngImg').src = 'imgs/6.gif'
        document.getElementById('otherEye').src = 'imgs/6.gif'
      } 
      if(eyepos == 7){
        document.getElementById('chngImg').src = 'imgs/7.gif'
        document.getElementById('otherEye').src = 'imgs/7.gif'
      } 
      if(eyepos == 8){
          document.getElementById('chngImg').src = 'imgs/8.gif'
          document.getElementById('otherEye').src = 'imgs/8.gif'
      }  
      if(eyepos == 9){
        document.getElementById('chngImg').src = 'imgs/9.gif'
        document.getElementById('otherEye').src = 'imgs/9.gif'
      }
      if(eyepos == 10){
        document.getElementById('chngImg').src = 'imgs/10.gif'
        document.getElementById('otherEye').src = 'imgs/10.gif'
      } 
  
  }
  function imageBack(){
      document.getElementById("chngImg").src = 'imgs/2.gif'
      document.getElementById('otherEye').src = 'imgs/2.gif'
      eyepos = 2;
  
  }
  
  function Blinksmh(){
      document.getElementById('chngImg').src = 'imgs/1.gif'
      document.getElementById('otherEye').src = 'imgs/1.gif'
      setTimeout(function(){
          document.getElementById('chngImg').src = 'imgs/2.gif'
          document.getElementById('otherEye').src = 'imgs/2.gif'
      if(eyepos == 3){
        document.getElementById('chngImg').src = 'imgs/3.gif'
        document.getElementById('otherEye').src = 'imgs/3.gif'
      } 
      if(eyepos == 4){
          document.getElementById('chngImg').src = 'imgs/4.gif'
          document.getElementById('otherEye').src = 'imgs/4.gif'

      }



      if(eyepos == 5){
        document.getElementById('chngImg').src = 'imgs/5.gif'
        document.getElementById('otherEye').src = 'imgs/5.gif'
      } 

      if(eyepos == 6){
        document.getElementById('chngImg').src = 'imgs/6.gif'
        document.getElementById('otherEye').src = 'imgs/6.gif'
      } 
      if(eyepos == 7){
        document.getElementById('chngImg').src = 'imgs/7.gif'
        document.getElementById('otherEye').src = 'imgs/7.gif'
      } 
      if(eyepos == 8){
          document.getElementById('chngImg').src = 'imgs/8.gif'
          document.getElementById('otherEye').src = 'imgs/8.gif'
      }  
      if(eyepos == 9){
        document.getElementById('chngImg').src = 'imgs/9.gif'
        document.getElementById('otherEye').src = 'imgs/9.gif'
      }
      if(eyepos == 10){
        document.getElementById('chngImg').src = 'imgs/10.gif'
        document.getElementById('otherEye').src = 'imgs/10.gif'
      } 

                 
      }, 1000)
  
  }

  function funnyimg() {
    document.getElementById('chngImg').src = 'imgs/funnyimg.png'
    document.getElementById('otherEye').src = ''
    document.getElementById('chngImg').classList.add('centerific')
    setTimeout(function(){
      document.getElementById('chngImg').src = 'imgs/2.gif'
      document.getElementById('chngImg').classList.remove('centerific')
      document.getElementById('otherEye').src = 'imgs/2.gif'
    }, 1000)

    
  }