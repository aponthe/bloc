//load emitira al bloc de cargar y renderizara
//delete <== posicion del elemento que queremos eliminar

// enum NewsEvents{load,delete}

class NewsEvents {}

class LoadEvent extends NewsEvents {}

class DeleteEvent extends NewsEvents {
  final int position;

  DeleteEvent(this.position);
}
