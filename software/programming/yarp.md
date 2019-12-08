# YARP

A continuación, presentamos un mini-tutorial, destinado a establecer las comunicaciones en un entorno [YARP](http://yarp.it).

Para más información existe una sección dedicada en la guía oficial: [YARP (Tutorials)](http://yarp.it/tutorials.html).

Para nociones básicas de redes, existe [el tutorial de redes (ASROB)](http://wiki.asrob.uc3m.es/index.php/Tutorial_de_Redes).

* [Requisitos previos](#requisitos-previos)
* [Lección 1: `yarp server`, `yarp write`, y `yarp read`](#lección-1-yarp-server-yarp-write-y-yarp-read)
* [Lección 2: `yarp read` con función de `quit`](#lección-2-yarp-read-con-función-de-quit)
* [Lección 3: `yarp write` básico](#lección-3-yarp-write-básico)
* [FAQ (Frequently asked questions o Preguntas frecuentes)](#faq-frequently-asked-questions-o-preguntas-frecuentes)
    * [¿Que es `yarpy`?](#¿que-es-yarpy)
    * [¿Que funcion tiene una botella (Bottle)?](#%C2%BFque-funcion-tiene-una-botella-bottle)
* [Páginas similares y relacionadas](#páginas-similares-y-relacionadas)

## Requisitos previos

* Se supone un mínimo conocimiento de:
    - Sistemas **Linux**: veánse las secciones de [Linux (ASROB)](../linux)
    - **C/C++**: veáse [el tutorial de Compilación en Linux (ASROB)](http://wiki.asrob.uc3m.es/index.php/Compilaci%C3%B3n_en_Linux)
* Instalar YARP: [installation-guides/install-yarp](http://robots.uc3m.es/gitbook-installation-guides/install-yarp.html)

## Lección 1: `yarp server`, `yarp write`, y `yarp read`

Abre una terminal en un sistema Linux (que llamaremos consola+número) y sigue estos pasos:

- `consola1`:
```bash
yarp server
```

- `consola2`:
```bash
yarp read /read
```

- `consola3`:
```bash
yarp write /write /read
```
Ahora escribimos (casi) cualquier cosa en `consola3` y vemos cómo aparece mágicamente en `consola2`.

## Lección 2: `yarp read` con función de `quit`

Crea un archivo llamado `ejemplo.cpp` con este código:

```cpp
#include <yarp/os/Network.h>
#include <yarp/os/Port.h>
#include <yarp/os/Bottle.h>
#include <stdio.h>

int main()
{
    yarp::os::Network yarp;
    yarp::os::Bottle bot;
    yarp::os::Port input;
    input.open("/read");
    while(1)
    {
        input.read(bot);
        printf("Got message: %s\n", bot.toString().c_str());
        // Now exit the loop if first element (this is, 0), treated as a string, equals "quit":
        if (bot.get(0).asString() == "quit")
            break;
    }
    input.close();
    return 0;
}
```

Abre una consola (que llamaremos `consola1`) en donde esté ese archivo.

- `consola1`:
```bash
yarp cmake
mkdir build; cd build; cmake ..; make
```

- `consola2`:
```bash
yarp server
```

- `consola1`:
```bash
./yarpy
```

- `consola3`:
```bash
yarp write /write /read
```

Ahora escribimos cualquier cosa en `consola3` y vemos cómo aparece mágicamente en `consola1`.
Si escribimos `quit` en la consola3, vemos que el módulo de la `consola1` se cierra, tal y como está explícito en el código que le hemos implementado.

**Observación 1:** Con `input.read(bot);` se está diciendo que el programa se quede en esta línea esperando (esto es, la función `read`, utilizada así, es una función "bloqueante") a que algo llegue por el puerto (que dentro del programa manejamos a través del objeto `input`) y vuelque su contenido dentro del objeto bot (de clase `Bottle`).

**Observación 2:** ¿Quién es el que manda, en la lección, contenido al puerto que manejamos con `input`?
Pues `yarp write`, que conectamos con sus parámetros de inicialización de (qué nombre muestro al exterior -> `/write`) (a quién me conecto al iniciarme -> `/read`, que es el nombre que hemos dicho a `input` que muestre de cara al exterior) al hacer `yarp write /write /read` desde la consola. `yarp write` por defecto, cada vez que damos al retorno de carro (enter), coge lo que hemos escrito y lo envía encapsulado en un `Bottle`.

## Lección 3: `yarp write` básico

Se parte de la lección anterior, añadiendo código nuevo.

```bash
#include <yarp/os/Network.h>
#include <yarp/os/Port.h>
#include <yarp/os/Bottle.h>
#include <yarp/os/Time.h> // código nuevo
#include <stdio.h>

int main()
{
    yarp::os::Network yarp;
    yarp::os::Bottle bot;
    yarp::os::Port output; // código nuevo
    output.open("/write"); // código nuevo
    while(1) // código nuevo
    { // código nuevo
        char c[100]; // código nuevo
        scanf("%s",c); // código nuevo
        bot.clear(); // will keep on appending if this line were inexistent // código nuevo
        bot.addString(c); // código nuevo
        output.write(bot); // código nuevo
    } // código nuevo
    output.close(); // código nuevo
    return 0;
}
```

Abre una consola (que llamaremos consola1) en donde esté ese archivo.

- `consola1`:
```bash
yarp cmake
```

- `consola1`:
```bash
mkdir build; cd build; cmake ..; make
```

- `consola2`:
```bash
yarp server
```

- `consola1`:
```bash
./yarpy
```

- `consola3`:
```bash
consola3~$ yarp read /read # comando nuevo
```

- `consola4`:
```bash
yarp connect /write /read # comando nuevo
```

Ahora escribimos cualquier cosa en `consola1` y veremos cómo aparece mágicamente en `consola3`.

## FAQ (Frequently asked questions o Preguntas frecuentes)

### ¿Que es `yarpy`?
Está definido en la línea 10 del `CMakeLists.txt` que genera `yarp cmake`. Es simplemente el nombre por defecto que asigna al ejecutable que generas tras el cmake y make (o sistema de compilación que utilices). Prueba a cambiar esa palabra antes del cmake!

### ¿Que funcion tiene una botella (Bottle)?
Es una estructura de datos flexible, un contenedor donde puedes incorportar enteros, cadenas de caracteres, coma flotante... Si nos fijamos en la declaración de la clase `Port` de YARP, no es más que un puerto especializado en manejar objetos de clase `Bottle`.

## Páginas similares y relacionadas
- <http://wiki.asrob.uc3m.es/index.php/Tutorial_yarp_devices>
