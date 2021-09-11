class Movel {
  String titulo;
  String foto;
  String descricao;
  int preco;

  Movel({
    required this.titulo,
    required this.foto,
    required this.descricao,
    required this.preco,
  });

  factory Movel.fromJson(Map<String, dynamic> json) {
    return Movel(
      titulo: json['titulo'],
      foto: json['foto'],
      descricao: json['descricao'],
      preco: json['preco'],
    );
  }
}
