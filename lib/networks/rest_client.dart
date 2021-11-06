
import 'package:flutter/cupertino.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'models/body_models.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "ppp")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("get-user")
  Future<String> getUser( @Query("id-check") String id_check, @Query("phone") String phone, @Query("password") String password);

  @GET("chat/")
  Future<List<SingleChatHistoryBody>> getChatHistory( @Query("id-check") String id_check, @Query("chat_id") String chat_id, @Query("offset") int offset );


}
