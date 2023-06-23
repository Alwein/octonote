import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/presentation/app/bloc/app_bloc.dart';
import 'package:octonote/presentation/app/routes/app_routes.dart';
import 'package:octonote/presentation/auth/view/auth_page_view.dart';
import 'package:octonote/presentation/bootstrapping/view/bootstrapping_view.dart';

void main() {
  group('appRouter delegate', () {
    test('onGenerateAuthViewPages should return HomePage we-hen AppState is authenticated', () {
      const AppState appState = AppState.authenticated(user: OctoUser.empty());
      expect(onGenerateAppViewPages(appState), [BootstrappingView.page()]);
    });
    test('onGenerateAuthViewPages should return HomePage we-hen AppState is authenticated', () {
      const AppState appState = AppState.unauthenticated();
      expect(onGenerateAppViewPages(appState), [AuthPageView.page()]);
    });
  });
}
