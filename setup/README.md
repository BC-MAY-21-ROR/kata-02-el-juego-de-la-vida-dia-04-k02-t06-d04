# Setup

Escribe aquí los pasos para ejecutar/probar tu proyecto y el nombre de los integrantes de tu equipo

Pasos para poder ejecutar el programa:

Clonar el repositorio o descargarlo como .zip y abrir la carpeta en el editor de su preferencia.

Para ejecutar el programa debera escribir en la terminal.

`ruby main.rb`

Despues se pedira ingresar el ancho y lo largo de la matriz para asi poder crear la primera generacion y despues la segunda.

![image](https://user-images.githubusercontent.com/57637591/122325751-c48d4e80-cef0-11eb-8513-141902ca7e27.png)

Para poder trabajar con gemas sera necesario correr el siguiente codigo en la terminal

`bundle install`

El cual crea un archivo llamado Gemfile en el cual podras ingresar cada una de las gemas necesarias para el programa,
en este caso, nosotros utilzamos las gemas:

`gem 'rubocop'`

`gem 'rspec'`

`gem 'rubycritic'`

`gem 'rubycritic-small-badge', :require => false `

En caso de querer realizar pruebas de codigo se utilizara el siguiente comando:

`rspec ./spec/(nombre del archivo a probar).rb`

Para calificar la calidad de codigo primero se creara un archivo llamado: `Rakefile`
Despues dentro del archivo se debera de pegar el siguiente codigo:

```
require 'rubycritic_small_badge'
require 'rubycritic/rake_task'
RubyCriticSmallBadge.configure do |config|
  config.minimum_score = ENV.fetch('RUBYCRITICLIMIT', 95.0)
end
RubyCritic::RakeTask.new do |task|
  task.options = %(--custom-format RubyCriticSmallBadge::Report
--minimum-score #{RubyCriticSmallBadge.config.minimum_score}
--format html --format console)
  task.paths = FileList['app/**/*.rb']
end

task default: :rubycritic

		
```

Al haberlo guardado, se correra el siguiente comando:

`bundle exec rake`

El cual creara dos carpetas, una llamada badges y otra tmp:

![image](https://user-images.githubusercontent.com/57637591/122327021-d40d9700-cef2-11eb-9c10-9e659190e252.png)



