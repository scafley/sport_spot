import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sport_spot/features/activities/data/models/activity_model.dart';

part 'activity_api_client.g.dart';

@lazySingleton
@RestApi()
abstract class ActivityApiClient {
  @factoryMethod
  factory ActivityApiClient(Dio dio) = _ActivityApiClient;

  @GET('/activities')
  Future<List<ActivityModel>> getActivities();

  @GET('/activities/{id}')
  Future<ActivityModel> getActivity(@Path('id') String id);

  @POST('/activities')
  Future<ActivityModel> createActivity(@Body() ActivityModel activity);
}