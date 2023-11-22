import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/data/repositories/home_repo.dart';
import 'package:soccer_club_app/presentations/view_models/home/home_view_models.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitial()) {
    on<HomeLoadData>(_mapHomeLoadDataState);
    on<NewLoadData>(_mapNewsLoadDataState);
    on<MatchLoadData>(_mapMatchLoadDataState);
    on<TicketLoadData>(_mapTicketLoadDataState);
  }

  Future<void> _mapHomeLoadDataState(
      HomeLoadData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());

    try {
      final homeViewModel = await homeRepository.fetchHomeData();
      emit(HomeLoaded(homeViewModel));
    } catch (e) {
      emit(const HomeError('Error loading home data'));
    }
  }

  Future<void> _mapNewsLoadDataState(
      NewLoadData event, Emitter<HomeState> emit) async {}

  Future<void> _mapMatchLoadDataState(
      MatchLoadData event, Emitter<HomeState> emit) async {}

  Future<void> _mapTicketLoadDataState(
      TicketLoadData event, Emitter<HomeState> emit) async {}
}
