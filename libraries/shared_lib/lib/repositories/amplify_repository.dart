import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../config/amplifyconfiguration.dart';
import '../data/amplify_models/ModelProvider.dart';

class AmplifyRepository {
  Future<void> configureAmplify() async {
    try {
      if (Amplify.isConfigured) return;
      final dataStorePlugin =
          AmplifyDataStore(modelProvider: ModelProvider.instance);
      final apiPlugin = AmplifyAPI();
      final authPlugin = AmplifyAuthCognito();

      // add Amplify plugins
      await Amplify.addPlugins([dataStorePlugin, apiPlugin, authPlugin]);

      // configure Amplify
      //
      // note that Amplify cannot be configured more than once!
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      // error handling can be improved for sure!
      // but this will be sufficient for the purposes of this tutorial
      safePrint('An error occurred while configuring Amplify: $e');
    }
  }
}
