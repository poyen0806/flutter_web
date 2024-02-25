enum Routes {
  home("/"),
  blog("/blog"),
  project("/project");

  final String path;

  const Routes(this.path);
}
