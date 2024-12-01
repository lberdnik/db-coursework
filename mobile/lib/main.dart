import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/application.dart';

void main() => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await configureDependencies();
        await getIt.allReady();
        Stripe.publishableKey =
            'pk_test_51MDmlRGCpPbaDbeuraGsIepL9H1DEEFYITAnEABdpI3WWToHx3kyVJzFQz5HfMRLwBdFPdFzcYl7oMZwhMyF3MuU00VCeg5ihQ';
        await Stripe.instance.applySettings();
        runApp(const MyApp());
      },
      (error, stack) {
        logger.e('Error in main: $error\nstack: $stack');
      },
    );
