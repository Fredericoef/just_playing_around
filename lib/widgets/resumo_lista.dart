/*
class ResumoLista extends StatelessWidget {
  final int id;
  final String imagem;
  final String listas;
  final String subtitulo;

   ResumoLista({
    this.imagem,this.listas, this.subtitulo, this.id
    });


  @override
  Widget build(BuildContext context) {

    void abrirPlanta(){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> TelaPlanta()));
    }

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
              imagem
          ),
        ),
        title: Text(listas,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(subtitulo),
        onTap: (){
          abrirPlanta();
        },

      ),
    );
  }
}
*/
