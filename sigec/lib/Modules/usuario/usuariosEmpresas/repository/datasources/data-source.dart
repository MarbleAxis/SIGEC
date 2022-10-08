abstract class DataSourceBase{
  
  Future<void> incluir(Map<String, dynamic> horario);

  Future<void> excluir(Map<String, dynamic> horario);

  Future<void> alterar(Map<String, dynamic> horario);

  Future<Map<String, dynamic>> selecionar(String data);
  
  Future<List<Map<String, dynamic>>> selecionarTodos();
   
}