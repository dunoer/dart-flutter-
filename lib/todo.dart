import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  final DateTime selectedDate;
  const TodoPage({super.key, required this.selectedDate});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Tarefas - ${widget.selectedDate.day}/${widget.selectedDate.month}/${widget.selectedDate.year}',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return ListTile(
                  title: Text(
                    task.name,
                    style: TextStyle(
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  leading: Icon(
                    task.isCompleted
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                    color: task.isCompleted ? Colors.green : Colors.red,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.check),
                        onPressed: () => _toggleTaskCompletion(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _removeTask(index),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _showAddTaskDialog(context),
                  child: const Text('Adicionar Tarefa'),
                ),
                ElevatedButton(
                  onPressed: () => _showRemoveAllTaskDialog(context),
                  child: const Text('Remover Todas'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ====== A PARTIR DAQUI, TUDO DENTRO DO _TodoPageState ======

  void _showAddTaskDialog(BuildContext context) {
    String newTaskName = '';
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Adicionar Tarefa'),
          content: TextField(
            onChanged: (value) => newTaskName = value,
            decoration: const InputDecoration(hintText: 'Nome da Tarefa'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (newTaskName.trim().isNotEmpty) {
                  setState(() {
                    tasks.add(Task(name: newTaskName.trim()));
                  });
                }
                Navigator.pop(context);
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  void _showRemoveAllTaskDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Remover todas as Tarefas'),
          content: const Text('Tem certeza que deseja remover todas as tarefas?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                setState(tasks.clear);
                Navigator.pop(context);
              },
              child: const Text('Remover Todas'),
            ),
          ],
        );
      },
    );
  }

  void _toggleTaskCompletion(int index) {
    setState(() {
      tasks[index].isCompleted = !tasks[index].isCompleted;
    });
  }

  void _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
}

class Task {
  String name;
  bool isCompleted;
  Task({required this.name, this.isCompleted = false});
}