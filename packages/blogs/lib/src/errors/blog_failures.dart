class BlogFailure implements Exception {
  const BlogFailure([this.message = 'An unknown blog exception occurred']);

  final String message;
}
