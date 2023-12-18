import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_app/models/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, emit) {
    emit(
      TasksState(allTasks: [...state.allTasks, event.task]),
    );
  }

  void _onUpdateTask(UpdateTask event, emit) {
    emit();
  }

  void _onDeleteTask(DeleteTask event, emit) {}
}
