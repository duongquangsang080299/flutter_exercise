import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/data/repositories/home_repo.dart';
import 'package:soccer_club_app/presentations/view_models/home/home_view_models.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitialState()) {
    on<HomeLoadDataEvent>(_mapHomeLoadDataState);
    on<NewsLoadDataEvent>(_mapNewsLoadDataState);
    on<MatchLoadDataEvent>(_mapMatchLoadDataState);
    on<TicketsLoadDataEvent>(_mapTicketLoadDataState);
  }

  Future<void> _mapHomeLoadDataState(
      HomeLoadDataEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());

    try {
      final homeViewModel = await homeRepository.fetchHomeData();
      emit(HomeLoadedSucesssState(homeViewModel));
    } catch (e) {
      // TODO: Handle the error state appropriately
      emit(const HomeErrorState('Error loading home data'));
    }
  }

  Future<void> _mapNewsLoadDataState(
      NewsLoadDataEvent event, Emitter<HomeState> emit) async {
    // TODO: Implement logic to fetch news data
    // TODO: Update the state accordingly (loading, loaded, error)
  }

  Future<void> _mapMatchLoadDataState(
      MatchLoadDataEvent event, Emitter<HomeState> emit) async {
    // TODO: Implement logic to fetch match data
    // TODO: Update the state accordingly (loading, loaded, error)
  }

  Future<void> _mapTicketLoadDataState(
      TicketsLoadDataEvent event, Emitter<HomeState> emit) async {
    // TODO: Implement logic to fetch ticket data
    // TODO: Update the state accordingly (loading, loaded, error)
  }
}
