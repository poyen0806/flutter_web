/// [Routes] is a enum class that contains all the routes of the application.
enum Routes {
  /// The home route
  home("/"),

  /// The blog route
  blog("/blog"),
  
  /// The project route
  project("/project");

  final String path;

  const Routes(this.path);
}
