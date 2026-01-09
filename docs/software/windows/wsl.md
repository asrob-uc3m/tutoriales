# WSL

- <https://learn.microsoft.com/en-us/windows/wsl/basic-commands>
- <https://docs.microsoft.com/en-us/windows/wsl/faq>

Nota: Para muchos comandos puede emplearse opcionalmente `--verbose` (o simplemente `-v`).

## Instalación/desinstalación de distribuciones de Linux

Listar distribuciones de Linux instaladas:

```bash
wsl --list # o simplemente -l
```

Listar distribuciones de Linux instalables:

```bash
wsl --list --online
```

Instalar:

```bash
wsl --install
```

Seleccionar distribución por defecto:

```bash
wsl --set-default <Distribution Name>
```

Desinstalar una distribución:

```bash
wsl --unregister <DistributionName>
```

## Ejecución

Para entrar en la distribución por defecto:

```bash
wsl
```

O entrar en una distribución aunque no sea la establecida por defecto:

```bash
wsl --distribution <Distribution Name>
```

## Cierre

A veces convendrá para wsl:

```bash
wsl --shutdown
```
