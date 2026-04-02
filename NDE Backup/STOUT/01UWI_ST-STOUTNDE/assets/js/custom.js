
// LIB CHAT  -----------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------
setTimeout(function(){
    var d = document.createElement('div');
    d.id = 'libchat_1178060bf5940ce80b11698c0ee16c10';
    d.className = 'lib-chat';
    document.body.appendChild(d);
    
    var s = document.createElement('script');
    s.id = 'libchat-script';
    s.type = 'text/javascript';
    s.src = 'https://uwstout.libanswers.com/load_chat.php?hash=1178060bf5940ce80b11698c0ee16c10';
    document.body.appendChild(s);
    
    // Handle Mobile - Trigger image to compress 
    var screen_width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
    if (screen_width < 1000) { // switch to mobile icon
        setTimeout(function(){
            var img = document.createElement('img');
            img.src = 'https://wisconsin-uwstout.primo.exlibrisgroup.com/nde/custom/01UWI_ST:STOUTNDE/assets/images/ve-chat-mobile.png';
            img.alt = 'Chat - Ask a Librarian';
            document.querySelector('.lib-chat a').appendChild(img);
            
            var elements = document.querySelectorAll('.lib-chat a img');
            for(var i = 0; i < elements.length; i++){
                if (typeof elements[i] === "undefined")
                    elements[i].className = 'libchat-mobile-on';
                else
                    elements[i].className += ' libchat-mobile-on';
            }
        }, 2500);
    }
    
}, 2500); // This will pause the chat from showing up instantly, it is set to 2.5 seconds