library swift_composer.test;

import 'dart:async';
import 'dart:convert';

import 'dart:typed_data';

import 'package:swift_server/server.dart';

class MockHeaders extends HttpHeaders {
  @override
  List<String>? operator [](String name) {
    // TODO: implement []
    throw UnimplementedError();
  }

  @override
  void add(String name, Object value, {bool preserveHeaderCase = false}) {
    // TODO: implement add
  }

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  void forEach(void Function(String name, List<String> values) action) {
    // TODO: implement forEach
  }

  @override
  void noFolding(String name) {
    // TODO: implement noFolding
  }

  @override
  void remove(String name, Object value) {
    // TODO: implement remove
  }

  @override
  void removeAll(String name) {
    // TODO: implement removeAll
  }

  @override
  void set(String name, Object value, {bool preserveHeaderCase = false}) {
    // TODO: implement set
  }

  @override
  String? value(String name) {
    // TODO: implement value
    throw UnimplementedError();
  }

}

class MockResponse extends StringBuffer implements HttpResponse {
  @override
  bool bufferOutput = false;

  @override
  int get contentLength => length;

  @override
  set contentLength(int v) => null;

  @override
  Duration? deadline;

  @override
  Encoding encoding = new Utf8Codec();

  @override
  bool persistentConnection = false;

  @override
  String reasonPhrase = '';

  @override
  int statusCode = 0;

  @override
  void add(List<int> data) {
    // TODO: implement add
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    // TODO: implement addError
  }

  @override
  Future addStream(Stream<List<int>> stream) {
    // TODO: implement addStream
    throw UnimplementedError();
  }

  @override
  Future close() async {
    return;
  }

  @override
  // TODO: implement connectionInfo
  HttpConnectionInfo? get connectionInfo => throw UnimplementedError();

  @override
  // TODO: implement cookies
  List<Cookie> get cookies => throw UnimplementedError();

  @override
  Future<Socket> detachSocket({bool writeHeaders = true}) {
    // TODO: implement detachSocket
    throw UnimplementedError();
  }

  @override
  // TODO: implement done
  Future get done => throw UnimplementedError();

  @override
  Future flush() {
    // TODO: implement flush
    throw UnimplementedError();
  }

  @override
  HttpHeaders headers = new MockHeaders();

  @override
  Future redirect(Uri location, {int status = HttpStatus.movedTemporarily}) {
    // TODO: implement redirect
    throw UnimplementedError();
  }

  dynamic toJson() {
    if (this.headers.contentType != ContentType.json) {
      throw new Exception('wrong content type');
    }
    return jsonDecode(this.toString());
  }

}

class MockRequest extends StreamView<Uint8List> implements HttpRequest {

  @override
  String method;

  @override
  Uri uri;

  MockRequest(this.method, String path) :
        uri = Uri(path:path),
        super(new Stream.empty()) {

  }

  @override
  // TODO: implement certificate
  X509Certificate? get certificate => throw UnimplementedError();

  @override
  // TODO: implement connectionInfo
  HttpConnectionInfo? get connectionInfo => throw UnimplementedError();

  @override
  // TODO: implement contentLength
  int get contentLength => throw UnimplementedError();

  @override
  // TODO: implement cookies
  List<Cookie> get cookies => throw UnimplementedError();

  @override
  // TODO: implement headers
  HttpHeaders get headers => throw UnimplementedError();

  @override
  // TODO: implement persistentConnection
  bool get persistentConnection => throw UnimplementedError();

  @override
  // TODO: implement protocolVersion
  String get protocolVersion => throw UnimplementedError();

  @override
  // TODO: implement requestedUri
  Uri get requestedUri => throw UnimplementedError();

  @override
  // TODO: implement response
  MockResponse response = new MockResponse();

  @override
  // TODO: implement session
  HttpSession get session => throw UnimplementedError();

}
