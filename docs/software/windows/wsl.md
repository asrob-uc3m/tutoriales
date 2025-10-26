# WSL

- <https://learn.microsoft.com/en-us/windows/wsl/basic-commands>
- <https://docs.microsoft.com/en-us/windows/wsl/faq>

Nota: Para muchos comandos puede emplearse opcionalmente `--verbose` (o simplemente `-v`).

Listar distribuciones de de Linux instaladas:

```bash
wsl --list # o simplemente -l
```

Listar distribuciones de de Linux instalables:

```bash
wsl --list --online
```

Instalar:

```
wsl --install
```

Desinstalar:

```bash
wsl --unregister <DistributionName>
```
