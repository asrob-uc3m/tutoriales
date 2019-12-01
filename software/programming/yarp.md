# YARP
A continuación, presentamos un mini-tutorial, destinado a establecer las comunicaciones en un entorno **YARP**.
La organización está basada en pequeñas lecciones que explican los primeros pasos para comprender YARP.
Para más información existe, en el apartado tutoriales, un enlace a la guía oficial de YARP.
Para nociones básicas de redes, existe [el tutorial de redes (ASROB)](Tutorial_de_Redes "wikilink").

**Requisitos**: Se supone un mínimo conocimiento de sistemas **Linux** (veáse [el tutorial de Consola de Linux (ASROB)](Consola_de_Linux "wikilink")), y de **C/C++** (veáse [el tutorial de Compilación en Linux (ASROB)](Compilación_en_Linux "wikilink")).

## Lección 1: `yarp server`, `yarp write`, y `yarp read`

Abre una terminal en un sistema Linux (que llamaremos consola+número) y sigue estos pasos:

- Consola 1:
```bash
yarp server
```

- Consola 2:
```bash
yarp read /read
```

- Consola 3:
```bash
yarp write /write /read
```
Ahora escribimos (casi) cualquier cosa en consola3 y vemos cómo aparece mágicamente en consola2.

## Lección 2: `yarp read` con función de `quit`

Crea un archivo llamado `ejemplo.cpp` con este código:

```cpp
#include <yarp/os/Network.h>
#include <yarp/os/Port.h>
#include <yarp/os/Bottle.h>
#include <stdio.h>

using namespace yarp::os;

int main() {
   Network yarp;
   Bottle bot;
   Port input;
   input.open("/read");
   while(1) {
       input.read(bot);
       printf("Got message: %s\n", bot.toString().c_str());
       // Now exit the loop if first element (this is, 0), treated as a string, equals "quit":
       if(bot.get(0).asString() == "quit") break;
   }
   input.close();
   return 0;
}
```

Abre una consola (que llamaremos consola1) en donde esté ese archivo.

- Consola 1:
```bash
yarp cmake
mkdir build; cd build; cmake ..; make
```

- Consola 2:
```bash
yarp server
```

- Consola 1:
```bash
./yarpy
```

- Consola 3:
```bash
yarp write /write /read
```

Ahora escribimos cualquier cosa en consola3 y vemos cómo aparece mágicamente en consola1.
Si escribimos `quit` en la consola3, vemos que el módulo de la consola1 se cierra, tal y como está explícito en el código que le hemos implementado.

**Observación 1:** Con `input.read(bot);` se está diciendo que el programa se quede en esta línea esperando (esto es, la función `read`, utilizada así, es una función "bloqueante") a que algo llegue por el puerto (que dentro del programa manejamos a través del objeto `input`) y vuelque su contenido dentro del objeto bot (de clase botella).

**Observación 2:** ¿Quién es el que manda, en la lección, contenido al puerto que manejamos con `input`?
Pues `yarp write`, que conectamos con sus parámetros de inicialización de (qué nombre muestro al exterior -\> `/write`) (a quién me conecto al iniciarme -\> `/read`, que es el nombre que hemos dicho a `input` que muestre de cara al exterior) al hacer `yarp write /write /read` desde la consola. `yarp write` por defecto, cada vez que damos al retorno de carro (enter), coge lo que hemos escrito y lo envía encapsulado en un `Bottle`.

## Lección 3: `yarp write` básico

Se parte de la lección anterior, añadiendo código nuevo.

```bash
#include <yarp/os/Network.h>
#include <yarp/os/Port.h>
#include <yarp/os/Bottle.h>
#include <yarp/os/Time.h> // código nuevo
#include <stdio.h>

using namespace yarp::os;

int main() {
   Network yarp;
   Bottle bot;
   Port output; // código nuevo
   output.open("/write"); // código nuevo
   while(1) { // código nuevo
       char c[100]; // código nuevo
       scanf("%s",c); // código nuevo
       bot.clear(); // will keep on appending if this line were inexistent // código nuevo
       bot.addString(c); // código nuevo
       output.write(bot); // código nuevo
   } // código nuevo
   output.close(); // código nuevo
   return 0;
}
```

Abre una consola (que llamaremos consola1) en donde esté ese archivo.

  - consola1~$ yarp cmake
  - consola1~$ mkdir build; cd build; cmake ..; make
  - consola2~$ yarp server
  - consola1~$ ./yarpy
  - **consola3~$ yarp read /read**
  - **consola4~$ yarp connect /write /read**

Ahora escribimos cualquier cosa en consola1 y veremos cómo aparece
mágicamente en consola3.

## FAQ (Frequently asked questions o Preguntas frecuentes)

- **P: ¿Que es /yarpy?**
   - R: Está definido en la línea 10 del `CMakeLists.txt` que genera `yarp cmake`. Es simplemente el nombre por defecto que asigna al ejecutable que generas tras el cmake y make (o sistema de compilación que utilices). Prueba a cambiar esa palabra antes del cmake\!

- **P: ¿Que funcion tiene una botella (Bottle)?**
    - R: Es una estructura de datos flexible, un contenedor donde puedes incorportar enteros, cadenas de caracteres, coma flotante... Si nos fijamos en la declaración de la clase `Port` de YARP, no es más que un puerto especializado en manejar objetos de clase `Bottle`.
