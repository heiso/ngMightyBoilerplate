module.exports =

  dirs:
    src: 'src'
    build: 'build'
    dist: 'dist'
    config: 'config'

  files:
    index: 'index.html'
    js: '**/*.js'
    js_modules_declaration: '**/_*.js'
    tpl: '**/*.tpl.html'
    scss: '**/*.scss'
    css: '**/*.css'
    assets: 'assets/**/*'

  vendors:
    js: [
      'lodash/lodash.min.js'
      'angular/angular.min.js'
      'angular/angular.min.js.map'
      'ui-router/release/angular-ui-router.min.js'
    ]
    css: [
      
    ]
