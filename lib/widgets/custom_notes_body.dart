import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class CustomNotesBody extends StatefulWidget {
  const CustomNotesBody({super.key});

  @override
  State<CustomNotesBody> createState() => _CustomNotesBodyState();
}

class _CustomNotesBodyState extends State<CustomNotesBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Notes',
          icon: Icons.search,),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}


