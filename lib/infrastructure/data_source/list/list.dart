import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/infrastructure/models/models.dart';
import 'package:sqflite/sqflite.dart';

import '../../network/client.dart';
import '../database/database.dart';

part 'list_local_data_source.dart';
part 'list_remote_data_source.dart';

const BASE_URL = 'https://my-json-server.typicode.com/imkhan334/demo-1';
const TO_CALL_URL = '$BASE_URL/call';
const TO_BUY_URL = '$BASE_URL/buy';
