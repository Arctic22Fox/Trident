$(document).ready(function(){
    var images=['images/AllianzPark.jpg',
                'images/AshtonGate.jpg',
                'images/MotorpointArena.jpg',
                'images/OldTrafford.jpg',
                'images/SandyPark.jpg',
                'images/SSEArena.jpg',
                'images/StamfordBridge.jpeg',
                'images/TheKop.jpg',
                'images/UtilitaArena.jpg',];
    
    var randomNumber = Math.floor(Math.random() * images.length);
    var bgImg = 'url(' + images[randomNumber] + ')';
    
    $('body').css({'background':bgImg, 'background-size':'cover', });
    
    });