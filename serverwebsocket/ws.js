var WebSocketServer = require('ws').Server,
  wss = new WebSocketServer({port: 40510})
  var CLIENTS =new Array();
  var _iduser  = 0;
wss.on('connection', function (ws) {
  CLIENTS.push(ws);
  var idUser = _iduser++;
  console.log("Chao mung user moi dang nhap, user moi co ID la: " + idUser);
  ws.on('message', function (message) {
    console.log("User co id: " + idUser + " gui tin nhan len server co noi dung sau: " + message);
    if(CLIENTS.length>1)
    {
      if(idUser==0)
      {
        CLIENTS[1].send("User 0 gui tin cho User 1: " + message);
      }else if(idUser == 1)
      {
        CLIENTS[0].send("User 1 gui tin cho User 0: " + message);
      }else{
        for (let index = 0; index < CLIENTS.length; index++) {
          if(index!= idUser)
          {
            CLIENTS[index].send("Co 1 user khong phai user 0 va 1 vua gui tin nhan. Iduser do la: "+ idUser +". User do se khong nhan duoc tin nhan nay tu he thong.");
          }
        }
      }
    }
    
  },
  ws.on('close',function(){
      console.log("User co ID " + idUser +" da discconect CMNR");
      CLIENTS.pop(CLIENTS[idUser]);
      for (let index = 0; index < CLIENTS.length; index++) {
        CLIENTS[index].send("User co ID la "+ idUser +" vu disconnect");
      }

  })
)
  

  
})
