enum Layout {
  column,
  row;

  static Layout fromString(String value) {
    switch (value) {
      case 'column':
        return Layout.column;
      case 'row':
        return Layout.row;
      default:
        return Layout.column;
    }
  }
}
