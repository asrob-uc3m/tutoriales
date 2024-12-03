# Bases de datos

## Entrar en mysql

```bash
mysql -u user -p
```

## Borrar base de datos

Dentro de `mysql>`:

```sql
DROP DATABASE database;  
```

## Crear base de datos

```sql
CREATE DATABASE database;  
```

## Importar `.sql`

La `-p` es para que pida contraseña, la `-D` es opcional. Desde consola:

```bash
mysql -u user -p -D database -o < dumpfile.sql
```

## Migración MySQL 5 a MySQL 8

You need to open the `.sql` file and put these lines at the top:

```sql
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; 
SET time_zone = "+00:00";
```