# Cargador IMAX B6AC

Disclaimer: esta guía está concebida como un resumen de uso rápido. Para una documentación completa sobre el cargador se debe consultar siempre el [manual de usuario](https://github.com/asrob-uc3m/actas/files/1397540/iMAXB6ACmanual.pdf).

## Contenido de la caja

Cuando vayas a utilizar el cargador, comprueba la presencia de todos estos elementos:

1. Caja de cartón
2. Manual de instrucciones, dentro de un sobre pegado en el interior de la tapa
3. Cargador IMAX B6AC
4. Cable negro para alimentación AC
5. Cable con pinzas para alimentación DC
6. Cable con bananas para conexión al cargador
7. Cables adaptadores para baterías
8. Funda protectora del cargador

<img src="https://user-images.githubusercontent.com/6171234/31945038-4d5a12f8-b8ce-11e7-84d2-323e4650ef87.jpg" alt="b6ac box content" height="300" align="middle">

Asimismo, **cuando termines de usarlo, asegúrate de que vuelves a dejarlo todo dentro de la caja**, tal y como muestra la siguiente imagen:

<img src="https://user-images.githubusercontent.com/6171234/31945054-5982b170-b8ce-11e7-8c23-7f3e366a16b5.jpg" alt="b6ac all in the box" height="300" align="middle">

## Alimentación del cargador

Para poner en funcionamiento el cargador se pueden utilizar dos tipos de alimentación:

- Toma de corriente de 220V AC (corriente alterna) utilizando el cable negro (recomendada).
- Fuente de alimentación o batería de 11 a 18V DC (corriente continua) utilizando el cable con pinzas.

Una vez conectado, si la alimentación es correcta, el cargador emitirá un breve pitido y la pantalla se encenderá mostrando la última configuración utilizada.

## Conocer la batería que se quiere cargar

El cargador IMAX B6AC puede cargar los siguientes tipos de baterías:

- LiPo (tensión nominal 3,7V) hasta 6 celdas
- LiIon (tensión nominal 3,6V) hasta 6 celdas
- LiFe (tensión nominal 3,3V) hasta 6 celdas
- NiMH hasta 15 celdas
- NiCd hasta 15 celdas
- Pb hasta 20 V

**Precaución**: no recargar baterías dañadas o pilas no recargables, bajo riesgo de incendio.

Para conocer el tipo de batería que vas a cargar, debes observar su etiquetado. A continuación se exponen los casos de uso más comunes.

## Carga de baterías LiPo

### Reconocimiento de características LiPo

Es preciso conocer las siguientes características, que se encuentran habitualmente en la etiqueta de la batería:

- Debe poner claramente que es una batería de tipo LiPo.
- La capacidad, dada en miliamperios hora (mAh).
- La capacidad de descarga, dada en C.
- El número de celdas o la tensión nominal de la batería.  Teniendo en cuenta que las celdas de LiPo tienen una tensión nominal de 3,7V, el número de celdas será el resultado de la siguiente cuenta: `número de celdas = tensión nominal de la batería / 3,7V`. El número de celdas también coincide con la siguiente cuenta: `número de celdas = número de cables del conector de equilibrado - 1`.

En la siguiente figura se muestra un ejemplo de dos baterías LiPo donde:

- El tipo de batería está señalado en amarillo.
- La capacidad está señalada en azul.
- La capacidad de descarga está señalada en naranja.
- El número de celdas, la tensión de la batería y los conectores de equilibrado están señalados en verde.

![lipo example](https://user-images.githubusercontent.com/6171234/31884020-1240a6a6-b7ec-11e7-91f2-f21bcd684afa.jpg)

### Conexión de la batería LiPo

Se deben conectar los bornes de la batería a los bornes marcados como OUTPUT en el cargador. Si la batería dispone de conector de equilibrado, se recomienda su conexión en el conector contiguo correspondiente. La conexión debe quedar tal y como muestra la siguiente figura:

![lipo connection](https://user-images.githubusercontent.com/6171234/31885067-8e0930c0-b7ef-11e7-8d2b-3e8946e7f6a1.PNG)

### Configuración del cargador LiPo

Al encenderse, el cargador mostrará la última configuración utilizada.

1.Pulsar repetidamente el botón Stop hasta que aparezca esta pantalla:

![program select lipo batt](https://user-images.githubusercontent.com/6171234/31885092-a046e156-b7ef-11e7-89ee-b229a7e823eb.PNG)

2.Pulsar el botón Enter, se mostrarán las opciones de carga o descarga:

![lipo options](https://user-images.githubusercontent.com/6171234/31885133-c4e54282-b7ef-11e7-8169-627c724361f8.PNG)

3.Pulsar los botones izquierda o derecha para navegar entre las opciones:

  - CHARGE: Carga completa, sin utilizar el conector de equilibrado.
  - BALANCE: Carga completa y equilibrada, requiere conectar el conector de equilibrado.
  - FAST CHG: Carga rápida, incompleta, sin utilizar el conector de equilibrado.
  - STORAGE: Carga o descarga equilibrada hasta la tensión óptima de almacenamiento. Útil si se va a tener la batería mucho tiempo sin utilizar.
  - DISCHARGE: Descarga completa de la batería.

**Atención**: Se recomienda utillizar únicamente las opciones BALANCE y STORAGE, por ser las más respetuosas con la batería. Las otras opciones pueden comprometer su vida útil y su seguridad. En esta guía se describe el proceso de carga mediante la opción BALANCE. Para otras opciones consultar el [manual de usuario](https://github.com/asrob-uc3m/actas/files/1397540/iMAXB6ACmanual.pdf).

4.Una vez se encuentre en la pantalla la opción BALANCE, pulsar Enter. Parpadeará la corriente.

5.Ajustar la corriente con los botones izquierda o derecha. Esta corriente será la máxima utilizada durante el proceso de carga; a mayor corriente, mayor velocidad.

**Precaución**: Para la carga, se recomienda utilizar como máximo un valor de corriente correspondiente a 1C. Un valor de 1C es un valor en corriente igual a la capacidad de la batería. Por ejemplo, para una batería de 2200mAh, un valor de 1C es una corriente de 2,2A. Si no se tiene mucha prisa, se recomienda utilizar valores alrededor de 0,5C.

6.Una vez seleccionada la corriente deseada, pulsar Enter. Parpadeará la tensión.

7.Ajustar la tensión con los botones izquierda o derecha. Esta debe ser la tensión nominal de la batería.

8.Mantener pulsado Enter durante 3 segundos. El cargador comprobará la batería conectada.

9.Se mostrará en pantalla una comparación entre la batería detectada y la batería indicada por el usuario. Si son distintas, pulsar Stop para comprobar la configuración, si son idénticas pulsar Enter y la carga comenzará.

### Proceso de carga LiPo

Durante el proceso de carga es importante mantener la atención sobre el cargador y la batería, siendo importante controlar periódicamente la temperatura de la misma. Se pueden realizar las siguientes operaciones:

1. Durante la primera parte de la carga, se puede modificar la corriente de carga. Presionando Enter la corriente parpadeará y se podrá modificar con los botones izquierda o derecha. Tras la selección se puede volver a fijar con Enter.
2. Durante la carga, pulsar los botones izquierda o derecha muestra los valores de tensión de cada celda. Esto permite comprobar el estado de la carga y el grado de equilibrio de la batería. Volviendo a pulsar los botones izquierda o derecha se regresa a la pantalla principal de la carga.
3. Si se desea, se puede cancelar la carga en cualquier momento presionando Stop.

**Atención**: Si se produce algún error durante la carga, el cargador emitirá una alarma sonora durante 10 segundos y aparecerá el mensaje de error en la pantalla.

Al finalizar la carga, el cargador emitirá una alarma sonora durante 10 segundos, y aparecerá la palabra FULL en la pantalla.

## Carga de baterías NiMH

### Reconocimiento de características NiMH

Es preciso conocer las siguientes características, que se encuentran habitualmente en la etiqueta de la batería:

- Debe poner claramente que es una batería de tipo NiMH
- La capacidad, dada en miliamperios hora (mAh).

En la siguiente figura se muestra un ejemplo de baterías NiMH donde:

- El tipo de batería está señalado en amarillo.
- La capacidad está señalada en azul.

![nimh example](https://user-images.githubusercontent.com/6171234/31884292-e78d91ac-b7ec-11e7-83f3-2ea06a6bebdc.png)

### Conexión de la batería NiMH

Se deben conectar los bornes de la batería a los bornes marcados como OUTPUT en el cargador. Para baterías de este tipo, no es compatible el uso de conector de equilibrado.

### Configuración del cargador NiMH

Al encenderse, el cargador mostrará la última configuración utilizada.

1.Pulsar repetidamente el botón Stop hasta que aparezca esta pantalla:

![program select nimh batt](https://user-images.githubusercontent.com/6171234/31885761-f517c8ce-b7f1-11e7-8c24-8d07e11401ab.PNG)

2.Pulsar el botón Enter, se mostrarán las opciones de carga o descarga:

![nimh options](https://user-images.githubusercontent.com/6171234/31885770-fa0b8730-b7f1-11e7-9b2f-93c2dbeaad23.PNG)

3.Pulsar los botones izquierda o derecha para navegar entre las opciones:

  - CHARGE: Carga completa de la batería.
  - DISCHARGE: Descarga completa de la batería.
  - CYCLE: Ciclos de carga y descarga

**Atención**: En esta guía se describe el proceso de carga mediante la opción CHARGE. Para otras opciones consultar el [manual de usuario](https://github.com/asrob-uc3m/actas/files/1397540/iMAXB6ACmanual.pdf).

4.Una vez se encuentre en la pantalla la opción CHARGE, pulsar Enter. Parpadeará el modo.

5.Ajustar el modo con los botones izquierda o derecha. El modo automático (Aut) permte seleccionar la máxima corriente de carga pero deja libertad al cargador para irla variando durante la carga, mientras que el modo manual (Man) utiliza una corriente de carga fija.

6.Una vez seleccionado el modo deseado, pulsar Enter. Parpadeará la corriente.

7.Ajustar la corriente con los botones izquierda o derecha.

**Precaución**: Para la carga, se recomienda utilizar como máximo un valor de corriente correspondiente a 0,5C. Un valor de 1C es un valor en corriente igual a la capacidad de la batería. Por ejemplo, para una batería de 2200mAh, un valor de 1C es una corriente de 2,2A; y un valor de 0,5C es una corriente de 1,1A. Si no se tiene mucha prisa, se recomienda utilizar valores alrededor de 0,25C.

**Atención**: Debido a la técnica que utiliza el cargador para reconocer la carga, no se recomienda utilizar corrientes inferiores a 0,2C, ya que el cargador tendrá problemas para reconocer cuándo la batería está completamente cargada. 

8.Mantener pulsado Enter durante 3 segundos. El cargador comprobará la batería conectada, y en caso afirmativo la carga comenzará.

### Proceso de carga NiMH

Durante el proceso de carga es importante mantener la atención sobre el cargador y la batería, siendo importante controlar periódicamente la temperatura de la misma. Se pueden realizar las siguientes operaciones:

1. Durante la primera parte de la carga, se puede modificar la corriente de carga. Presionando Enter la corriente parpadeará y se podrá modificar con los botones izquierda o derecha. Tras la selección se puede volver a fijar con Enter.
2. Si se desea, se puede cancelar la carga en cualquier momento presionando Stop.

**Atención**: Si se produce algún error durante la carga, el cargador emitirá una alarma sonora durante 10 segundos y aparecerá el mensaje de error en la pantalla.

Al finalizar la carga, el cargador emitirá una alarma sonora durante 10 segundos, y aparecerá la palabra FULL en la pantalla.
