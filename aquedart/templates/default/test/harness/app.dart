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
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<WildfireChannel> {
  @override
  Future onSetUp() async {}

  @override
  Future onTearDown() async {}
}
