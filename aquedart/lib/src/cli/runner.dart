import 'dart:async';

import 'package:aquedart/src/cli/commands/auth.dart';
import 'package:aquedart/src/cli/command.dart';
import 'package:aquedart/src/cli/commands/build.dart';
import 'package:aquedart/src/cli/commands/create.dart';
import 'package:aquedart/src/cli/commands/db.dart';
import 'package:aquedart/src/cli/commands/document.dart';
import 'package:aquedart/src/cli/commands/serve.dart';
import 'package:aquedart/src/cli/commands/setup.dart';

class Runner extends CLICommand {
  Runner() {
    registerCommand(CLITemplateCreator());
    registerCommand(CLIDatabase());
    registerCommand(CLIServer());
    registerCommand(CLISetup());
    registerCommand(CLIAuth());
    registerCommand(CLIDocument());
    registerCommand(CLIBuild());
  }

  @override
  Future<int> handle() async {
    printHelp();
    return 0;
  }

  @override
  String get name {
    return "aquedart";
  }

  @override
  String get description {
    return "aquedart is a tool for managing aquedart applications.";
  }
}
