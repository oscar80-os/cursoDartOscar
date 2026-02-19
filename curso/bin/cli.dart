const version = '0.0.1';
void main(List<String> arguments) {
    if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('curso CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
