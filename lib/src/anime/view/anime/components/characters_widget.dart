import 'package:anime_portal/src/anime/controller/anime_controller/anime_cubit.dart';
import 'package:anime_portal/src/anime/model/character_staff.dart';
import 'package:anime_portal/src/app/view/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersWidget extends StatelessWidget {
  const CharactersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeCubit, AnimeState>(
      builder: (context, state) {
        if (state.characterStaffLoading) {
          return const LoadingWidget();
        } else if (state.characterStaff != CharacterStaff.empty()) {
          return GridView.builder(
            itemCount: state.characterStaff.characters.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 0.4,
            ),
            itemBuilder: (context, index) {
              final character = state.characterStaff.characters[index];
              return ListTile(
                leading: Image.network(character.imageUrl),
                title: Text(character.name),
                subtitle: Text(character.role),
              );
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
