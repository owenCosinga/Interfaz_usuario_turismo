import 'package:google_maps_flutter/google_maps_flutter.dart';

class Destination {
  String image;
  String name;
  LatLng position;
  String description;

  Destination({
    this.image,
    this.name,
    this.position,
    this.description,
  });
}

final List<Destination> destinations = [
  Destination(
      image: 'assets/pyramids.jpg',
      name: 'Salkantay',
      position: LatLng(-13.333961349901267, -72.54393213086432),
      description:
          'Salkantay Trek es una caminata en América del Sur y una alternativa al Camino Inca tradicional para llegar a Machupicchu . Presenta una combinación única de cultura y mística, conservada con orgullo por el pueblo peruano, y es una aventura asombrosa y de extraordinaria belleza natural. Salkantay trekking se lleva a cabo en los picos más altos de la montaña Humantay , donde el frío hielo de las montañas se encuentra con el calor humeante de los Andes . La caminata está rodeada por el histórico Machupicchu (Parque Nacional y es considerada una de las 25 mejores caminatas del mundo). Salkantay trek es una caminata muy diversa y rica en geografía, cultura e historia andina. losLa Cordillera de Vilcanota contiene las dos veinte montañas más altas de América.'),
  Destination(
      image: 'assets/maldives.jpg',
      name: 'Sacsayhuaman',
      position: LatLng(-13.509678647011816, -71.98164488661347),
      description:
          'Sacsayhuaman esta ubicado al interior de los cuadrantes del Chinchaysuyu y el Antisuyu.es una de las edificaciones más asombrosas de todo el mundo. Se piensa que empezó a construirse durante el gobierno del inca Pachacutec en el siglo XV.Se cree que más de 20 mil hombres extrajeron las piedras de las canteras aledañas y la trasladaron 20 kilómetros hasta la colina de la ciudad del Cusco. Hoy, se calcula que Sacsayhuaman conserva solo el 40 por ciento de su antigua estructura. Aun así, el sitio posee estructuras de hasta 125 toneladas de peso. ¿Cómo los incas construyeron Sacsayhuaman con estructuras de un peso y tamaño inverosímiles para la época? Muchas preguntas aún son un misterio. Ahí reside la belleza de este sitio arqueológico.'),
  Destination(
      image: 'assets/paris.jpg',
      name: 'Qorikancha',
      position: LatLng(-13.520059154727576, -71.97524463079253),
      description:
          'Se ubica la plazoleta de Santo Domingo en el actual recinto del templo y convento de Santo Domingo, construidos sobre los restos del Qorikancha y se extiende hasta la Av. El Sol.Según la concepción inca, el Qorikancha fue el centro religioso del Cusco, centro geográfico y político. El templo del Qorikancha, era el lugar donde rendía pleitesía al máximo dios inca el "Inti" (sol). "Qori" significa oro trabajado, su forma castellanizada es cori. "Kancha" significa lugar cercado, limitado por muros. De donde se tiene que el nombre corresponde aproximadamente "lugar cercado que contiene oro".'),
  Destination(
      image: 'assets/venice.jpg',
      name: 'Plaza de armas de Cusco',
      position: LatLng(-13.516500767090594, -71.97872310195665),
      description:
          'La Plaza de Armas de Cusco te enamora en cuanto la pisas. Sus edificios, de arquitectura colonial, son el reflejo del paso de los conquistadores españoles por esta ciudad. Sin embargo, esta plaza tiene su origen mucho antes de la Conquista. Este fue el punto elegido para comenzar a crear la Ciudad Imperial, la cual se convirtió en capital del Imperio Inca.Hoy en día, la Plaza de Armas es uno de los principales atractivos turísticos de la ciudad de Cusco. Aquí se encuentran diversos templos religiosos (la catedral, la Iglesia de la Compañía de Jesús y la Capilla del Triunfo), acompañados por hermosos portales con arcos coloniales.'),
  Destination(
      image: 'assets/rio.jpg',
      name: 'Piedra de los 12 angulos',
      position: LatLng(-13.515749397932819, -71.97627460195659),
      description:
          'La piedra de los 12 ángulos está ubicado en la calle Hatun Rumiyoq (piedra grande en lengua quechua), casi 500 metros desde la Plaza de Armas de la ciudad. Forma parte de un muro inca donde actualmente se asienta el palacio Arzobispal y Museo de Arte Religioso del Cusco.La piedra de los 12 ángulos es una de las atracciones más populares de la ciudad del Cusco. Su fama se debe a la perfección de su construcción. Se trata de una enorme piedra pulida, la cual encaja a la perfección en cada una de sus esquinas con el resto de piedras que forman el muro. Se encuentra en la calle Hatun Rumiyoc. La visita a este lugar es gratuita. Es uno de los lugares más fotografiados del Cusco.'),
  Destination(
      image: 'assets/venice.jpg',
      name: 'Ollantaytambo',
      position: LatLng(-13.256978461424438, -72.26586688958956),
      description:
          'La Plaza de Armas de Cusco te enamora en cuanto la pisas. Sus edificios, de arquitectura colonial, son el reflejo del paso de los conquistadores españoles por esta ciudad. Sin embargo, esta plaza tiene su origen mucho antes de la Conquista. Este fue el punto elegido para comenzar a crear la Ciudad Imperial, la cual se convirtió en capital del Imperio Inca.Hoy en día, la Plaza de Armas es uno de los principales atractivos turísticos de la ciudad de Cusco. Aquí se encuentran diversos templos religiosos (la catedral, la Iglesia de la Compañía de Jesús y la Capilla del Triunfo), acompañados por hermosos portales con arcos coloniales.'),
  Destination(
      image: 'assets/venice.jpg',
      name: 'Montaña de 7 colore',
      position: LatLng(-13.853055837547624, -71.30468160018845),
      description:
          'La Plaza de Armas de Cusco te enamora en cuanto la pisas. Sus edificios, de arquitectura colonial, son el reflejo del paso de los conquistadores españoles por esta ciudad. Sin embargo, esta plaza tiene su origen mucho antes de la Conquista. Este fue el punto elegido para comenzar a crear la Ciudad Imperial, la cual se convirtió en capital del Imperio Inca.Hoy en día, la Plaza de Armas es uno de los principales atractivos turísticos de la ciudad de Cusco. Aquí se encuentran diversos templos religiosos (la catedral, la Iglesia de la Compañía de Jesús y la Capilla del Triunfo), acompañados por hermosos portales con arcos coloniales.'),
  Destination(
      image: 'assets/venice.jpg',
      name: 'Machu picchu',
      position: LatLng(-13.163015827392684, -72.54494144541374),
      description:
          'La Plaza de Armas de Cusco te enamora en cuanto la pisas. Sus edificios, de arquitectura colonial, son el reflejo del paso de los conquistadores españoles por esta ciudad. Sin embargo, esta plaza tiene su origen mucho antes de la Conquista. Este fue el punto elegido para comenzar a crear la Ciudad Imperial, la cual se convirtió en capital del Imperio Inca.Hoy en día, la Plaza de Armas es uno de los principales atractivos turísticos de la ciudad de Cusco. Aquí se encuentran diversos templos religiosos (la catedral, la Iglesia de la Compañía de Jesús y la Capilla del Triunfo), acompañados por hermosos portales con arcos coloniales.'),
  
];
