import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:interview_project/infrastructure/network/network.dart';

part 'account_local_data_source.dart';
part 'account_remote_data_source.dart';

const CREDENTIAL_KEY = 'CREDENTIAL_KEY';
const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN_KEY';
const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN_KEY';
