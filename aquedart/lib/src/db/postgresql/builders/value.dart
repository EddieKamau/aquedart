import 'package:aquedart/src/db/managed/managed.dart';
import 'package:aquedart/src/db/postgresql/builders/column.dart';
import 'package:aquedart/src/db/postgresql/builders/table.dart';

class ColumnValueBuilder extends ColumnBuilder {
  ColumnValueBuilder(
      TableBuilder table, ManagedPropertyDescription property, dynamic value)
      : super(table, property) {
    this.value = convertValueForStorage(value);
  }

  dynamic value;
}
