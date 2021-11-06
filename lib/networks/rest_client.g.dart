// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'ppp';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<String> getUser(id_check, phone, password) async {
    ArgumentError.checkNotNull(id_check, 'id_check');
    ArgumentError.checkNotNull(phone, 'phone');
    ArgumentError.checkNotNull(password, 'password');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'id-check': id_check,
      r'phone': phone,
      r'password': password
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<String>('get-user',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<List<SingleChatHistoryBody>> getChatHistory(
      id_check, chat_id, offset) async {
    ArgumentError.checkNotNull(id_check, 'id_check');
    ArgumentError.checkNotNull(chat_id, 'chat_id');
    ArgumentError.checkNotNull(offset, 'offset');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'id-check': id_check,
      r'chat_id': chat_id,
      r'offset': offset
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('chat/',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) =>
            SingleChatHistoryBody.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
