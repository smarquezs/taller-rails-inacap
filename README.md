## TALLER RAILS

## Prerrequisitos
* Vagrant
* Virtual BOX

Si es windows descargar e instalar
Git for windows [Git para windows] (http://git-scm.com/download/win)

## Clonar repositorio
Ir a la consola si es windows ideal C:

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
  bundle install --no-deployment; bundle install --deployment (esperar otro ratito)
```

## Cuando termine el bundle install

Agregue una entrada en su archivo hosts

```console
  33.33.33.51 taller.dev.inacap.cl
```

Ahora vaya a su navegador e ingrese
taller.dev.inacap.cl o 33.33.33.51

## Finalmente

Estás listo para codear, a disfrutar :)
