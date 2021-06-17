import 'package:wildfire/model/user.dart';
import 'package:wildfire/wildfire.dart';
import 'package:aquedart_test/aquedart_test.dart';

export 'package:wildfire/wildfire.dart';
export 'package:aquedart_test/aquedart_test.dart';
export 'package:test/test.dart';
export 'package:aquedart/aquedart.dart';

/// A testing harness for wildfire.
///
/// A harness for testing an aquedart application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("Make request", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<WildfireChannel>
    with TestHarnessAuthMixin<WildfireChannel>, TestHarnessORMMixin {
  @override
  ManagedContext get context => channel.context;

  @override
  AuthServer get authServer => channel.authServer;

  Agent publicAgent;

  @override
  Future onSetUp() async {
    // add initialization code that will run once the test application has started
    await resetData();

    publicAgent = await addClient("com.aquedart.public");
  }

  Future<Agent> registerUser(User user, {Agent withClient}) async {

    final req = withClient.request("/register")
      ..body = {"username": user.username, "password": user.password};
    await req.post();

    return loginUser(withClient, user.username, user.password);
  }
}
