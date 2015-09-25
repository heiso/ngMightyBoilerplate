## ngMightyBoilerplate ##

## Requirements

Node JS and Grunt must installed on your development machine.
You will also need to install globally several plugin.

- `npm install -g grunt-cli`


## Installation

- `bower install`
- `npm install`


## Dev options

- `grunt watch` : Allow you to develop as you go.
- `grunt build` : Build a dist folder containing dev contents.

#Notes#

- Module oriented architecture

#Architecture#

```
- config
- grunt
  |- gruntConfig.coffee
- src
  |- app
    |- page
      |- _page.js (module definition and config)
      |- pageStates.js (ui-router states for this app module)
      |- pageIndexCtrl.js (ctrl linked to index state)
      |- pageIndex.tpl.html (tpl linked to index state)
  |- assets
  |- modules
  |- scss
  |- views
  |- index.html
```


#Workflow#

*Add a new app module*

1. Create a folder `app/dummy`.
2. Create an angular module declartion file `app/dummy/_dummy.js`, and inject it in `app/_app.js`.
3. Create a ui-router state files `app/dummy/dummyStates.js`.
4. Edit `app/dummy/dummyStates.js` and add as state as you want.
```
.state('dummy', {
  url: '/dummy',
  views: {
    'main': {
      'templateUrl': 'app/dummy/dummyIndex.tpl.html',
      'controller': 'dummyIndexCtrl'
    }
  })
.state('dummy.edit', {
  url: '/dummy/edit/:id',
  views: {
    'main': {
      'templateUrl': 'app/dummy/dummyEdit.tpl.html',
      'controller': 'dummyEditCtrl'
    }
  })
```
5. If you need to create a reusable directive, you can create it in `app/views`, and inject it in the `modules/_modules.js` module declaration.
5. If you want to create a specific directive for this module you can drop it in `app/views/dummy` folder, and inject it in the `views/_views.js` module declaration.

*Rules :*
- If a directive is closely linked to a specific service, it should be moved in `app/modules/myModule`, because it's not anymore a simple "view" directive
- DO NOT create more than necessary in `app/dummy`. Only `_dummy.js`, `dummyState.js` and a `dummy<*>Ctrl.js`/`dummy<*>.tpl.html` by state defined in the `dummyState.js`
