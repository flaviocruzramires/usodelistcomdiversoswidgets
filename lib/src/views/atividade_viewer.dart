import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';

class AtividadeViewer extends StatelessWidget {
  const AtividadeViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            TextCustom(
              'Atividade Viewer',
              LargeFonteSize,
              FontWeight.bold,
              defaultTextColor,
            ).getText(),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: paletaCor,
        child: Center(
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.local_activity,
                    color: defaultTextColor,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      // Clear the text field
                    },
                  ),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: defaultTextColor, width: 2.0),
                  ),
                  labelText: 'Digite o nome da atividade',
                  hintText: 'Nome da atividade',
                  labelStyle: TextStyle(
                    color: defaultTextColor,
                    fontSize: defaultFonteSize,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a descrição da atividade',
                  hintText: 'Descrição da atividade',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a data da atividade',
                  hintText: 'Data da atividade',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o status da atividade',
                  hintText: 'Status da atividade',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o local da atividade',
                  hintText: 'Local da atividade',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a observação da atividade',
                  hintText: 'Observação da atividade',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a categoria da atividade',
                  hintText: 'Categoria da atividade',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o tipo da atividade',
                  hintText: 'Tipo da atividade',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
