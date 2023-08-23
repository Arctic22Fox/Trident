$(document).ready(function(){
    var images=['static/bgimg/AllianzPark.jpg',
                'static/bgimg/AshtonGate.jpg',
                'static/bgimg/MotorpointArena.jpg',
                'static/bgimg/OldTrafford.jpg',
                'static/bgimg/SandyPark.jpg',
                'static/bgimg/SSEArena.jpg',
                'static/bgimg/StamfordBridge.jpeg',
                'static/bgimg/TheKop.jpg',
                'static/bgimg/UtilitaArena.jpg',];
    
    var randomNumber = Math.floor(Math.random() * images.length);
    var bgImg = 'url(' + images[randomNumber] + ')';
    
    $('body').css({'background':bgImg, 'background-size':'cover', });
    
    });