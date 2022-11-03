import 'package:redux/redux.dart';
import 'package:yts_movies/actions/get_movies.dart';
import 'package:yts_movies/models/app_state.dart';
import 'package:yts_movies/models/movie.dart';

// state + action => state
Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMovies>(_getMovies),
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<AppState, GetMoviesError>(_getMoviesError),
]);

AppState _getMovies(AppState state, GetMovies action) {
  return state.copyWith(isLoading: true);
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  final List<Movie> movies = <Movie>[];
  movies.addAll(state.movies);
  movies.addAll(action.movies);



  return state.copyWith(
    movies: movies,
    page: state.page + 1,
    isLoading: false,
  );
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.copyWith(isLoading: false);
}
