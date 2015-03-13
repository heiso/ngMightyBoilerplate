module.exports = 

  dirs:
    src: 'src'
    build: 'build'
    dist: 'dist'
    config: 'config'

  files:
    index: 'index.html'
    js: '**/*.js'
    tpl: '**/*.tpl.html'
    scss: '**/*.scss'
    css: '**/*.css'
    assets: 'assets/**/*'

  vendors:
    js: [
      'angular/angular.min.js'
      'angular/angular.min.js.map',
      'ui-router/release/angular-ui-router.min.js'
    ]
    css: [
      'foundation/css/normalize.css',
      'foundation/css/foundation.css'
    ]
