enum Platform {
  /// enum for mobile platform, minimum width is 0
  mobile(0),

  /// enum for tablet platform, minimum width is 720
  tablet(720),

  /// enum for computer platform, minimum width is 1280
  computer(1280);

  /// the minimum width of the platform
  final double minWidth;

  const Platform(this.minWidth);
}
