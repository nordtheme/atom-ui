root = document.documentElement;

module.exports =
  activate: (state) ->
    atom.config.observe 'nord-atom-ui.tabSizing', (noFullWidth) ->
      setTabSizing(noFullWidth)

  deactivate: ->
    unsetTabSizing()

setTabSizing = (noFullWidth) ->
  if (noFullWidth)
    unsetTabSizing()
  else
    root.setAttribute('theme-nord-atom-ui-tabsizing', "nofullwidth")

unsetTabSizing = ->
  root.removeAttribute('theme-nord-atom-ui-tabsizing')
