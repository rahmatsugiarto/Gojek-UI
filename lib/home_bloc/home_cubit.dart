import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/list_card_copay.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(currentIndex: kListCardGopay.length));

  void setCurrentIndex(int idx) => emit(state.copyWith(currentIndex: idx));
}
