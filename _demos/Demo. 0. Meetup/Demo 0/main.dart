import 'dart:io';

main() async {
  print("Starting server to listen to localhost:8080");
  HttpServer server = await HttpServer.bind("127.0.0.1", 8080);
  server.listen((HttpRequest request){
    print("a new request");
    HttpResponse response = request.response;
    response
      ..write("Thanx")
      ..close();
  });
}