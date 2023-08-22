'use strict';

function neutralino_init(){
    globalThis.Neutralino.init();
    globalThis.Neutralino.events.on(
      'windowClose',
      function(){
          if(globalThis.confirm('Quit?')){
              globalThis.Neutralino.app.exit();
          }
      }
    );
}
