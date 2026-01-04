enum Layout {
  column,
  row;

  static Layout fromString(String value) {
    return value == 'row' ? Layout.row : Layout.column;
  }
}
