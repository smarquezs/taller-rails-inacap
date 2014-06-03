== TALLER RAILS

## Prerrequisitos
* Vagrant
* Virtual BOX

Si es windows descargar e instalar
Git for windows [Git para windows] (http://git-scm.com/download/win)

## Clonar repositorio
Ir a la consola si es windows, si es windows ideal C:

```console
  git clone git@github.com:smarquezs/taller-rails-inacap.git
  cd taller-rails-inacap
  cd vagrant
  vagrant up (esperar unos minutos)
```

## Una vez instalado

```console
  vagrant ssh (para ingresar a la maquina con linux)
  cd /taller
  rbenv rehash
  bundle install (esperar otro ratito)
```

## Cuando termine el bundle install

```
  bundle exec rails server
```
## En su navegador

localhost:3000
