class Empresa {
  final String nome;
  final String cnpj;
  final String telefone;
  final String email;

  Empresa({
    required this.nome,
    required this.cnpj,
    required this.telefone,
    required this.email,
  });

  static List<Empresa> obterEmpresas({required int quantidade}) {
    return List.generate(
      quantidade,
      (index) => Empresa(
        nome: 'Empresa ${index + 1}',
        cnpj: '12.345.678/000${index + 1}',
        telefone: '(11) 98765-432${index + 1}',
        email: 'contato@empresa${index + 1}.com',
      ),
    );
  }
}
