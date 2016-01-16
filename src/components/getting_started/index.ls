require! {
  lodash: {size}
  './index.less'
}

module.exports =
  name: \getting-started
  template: require('./index.jade')()

  data: ->
    host: 'github'
    owner: null
    repo: null

  computed:
    path: -> "#{@host}/#{@owner}/#{@repo}"

  methods:
    move: ->
      if size(@owner) > 0 and size(@repo) > 0
        @$router.go(@path)
