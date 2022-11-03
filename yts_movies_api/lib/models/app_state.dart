import 'package:yts_movies/models/movie.dart';

class AppState {
  AppState({
    this.movies = const <Movie>[],
    this.isLoading = false,
    this.page = 1,
  });

  final List<Movie> movies;
  final bool isLoading;
  final int page;

  AppState copyWith({
    final List<Movie>? movies,
    final bool? isLoading,
    final int? page,
  }) {
    return AppState(
      movies: movies ?? this.movies,
      isLoading: isLoading ?? this.isLoading,
      page: page ?? this.page,
    );
  }

  @override
  String toString() {
    return 'AppState{movies: $movies, isLoading: $isLoading, page: $page}';
  }
}
