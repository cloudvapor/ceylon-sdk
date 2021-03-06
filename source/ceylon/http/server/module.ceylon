"""This module defines APIs for defining HTTP endpoints and executing HTTP servers.
   
   A [[ceylon.http.server::Server]] represents a HTTP 
   server. A new `Server` may be defined using 
   [[ceylon.http.server::newServer]].
   
       void runServer() {
           //create a HTTP server
           value server = newServer {
               //an endpoint, on the path /hello
               Endpoint {
                   path = startsWith("/hello");
                   //handle requests to this path
                   service(Request request, Response response) 
                           => response.writeString("hello world");
               },
               WebSocketEndpoint {
                   path = startsWith("/websocket");
                   onOpen(WebSocketChannel channel) 
                           => print("Channel opened");
                   onClose(WebSocketChannel channel, CloseReason closeReason) 
                           => print("Channel closed");
                   void onError(WebSocketChannel webSocketChannel, Exception? throwable) {}
                   void onText(WebSocketChannel channel, String text) {
                       print("Received text:");
                       print(text);
                       channel.sendText(text.uppercased);
                   }
                   void onBinary(WebSocketChannel channel, ByteBuffer binary) {
                       String data = utf8.decode(binary);
                       print("Received binary:");
                       print(data);
                       value encoded = utf8.encode(data.uppercased);
                       channel.sendBinary(encoded);
                   }
               }
           };
   
           //start the server on port 8080
           server.start(SocketAddress("127.0.0.1",8080));
       }"""

by("Stéphane Épardaud", "Matej Lazar")
license("Apache Software License")
native("jvm")
module ceylon.http.server maven:"org.ceylon-lang" "1.3.3-SNAPSHOT" {
    
    shared import ceylon.http.common "1.3.3-SNAPSHOT";
    shared import ceylon.collection "1.3.3-SNAPSHOT";
    shared import ceylon.io "1.3.3-SNAPSHOT";
    shared import "com.redhat.ceylon.module-resolver" "1.3.3-SNAPSHOT";
    import ceylon.file "1.3.3-SNAPSHOT";
    
    // -- java modules --
    
    import java.base "7";
    
    import io.undertow.core "1.4.4.Final";

    import org.jboss.xnio.nio "3.3.6.Final";

}
