class Funcionario {
  final String nome;
  final String email;
  final String senha;
  final String cargo;
  final String area;
  Funcionario({
    required this.nome,
    required this.email,
    required this.senha,
    required this.cargo,
    required this.area,
  });

  String showFunc() {
    return 'Funcionario(nome: $nome, email: $email, senha: $senha, cargo: $cargo, area: $area)';
  }
}
