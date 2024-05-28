import 'package:flutter/material.dart';

// Create a data model to represent a doctor
class Doctor {
  final String name;
  final String specialty;

  Doctor({required this.name, required this.specialty});
}

// Create a list of sample doctor data
List<Doctor> doctors = [
  Doctor(name: 'Dr. John Doe', specialty: 'Cardiologist'),
  Doctor(name: 'Dr. Jane Smith', specialty: 'Dermatologist'),
  Doctor(name: 'Dr. Peter Jones', specialty: 'Dentist'),
];

class ListarMedicos extends StatefulWidget {
  const ListarMedicos({super.key, required this.title});

  final String title;

  @override
  _ListarMedicosState createState() => _ListarMedicosState();
}

class _ListarMedicosState extends State<ListarMedicos> {
  void addDoctor() {
    // Implement logic to add a new doctor to the list
    setState(() {
      doctors.add(Doctor(name: 'New Doctor', specialty: 'Unknown'));
    });
  }

  void editDoctor(int index) {
    // Implement logic to edit the doctor at the given index
    // You can use a dialog or navigation to an edit screen
    print('Edit doctor at index: $index');
  }

  void deleteDoctor(int index) {
    // Remove the doctor from the list
    setState(() {
      doctors.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Médicos'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addDoctor,
          tooltip: 'Adicionar Médico',
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            final doctor = doctors[index];
            return ListTile(
              title: Text(doctor.name),
              subtitle: Text(doctor.specialty),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => editDoctor(index),
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () => deleteDoctor(index),
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
