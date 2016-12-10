root = document.documentElement;

module.exports =
  activate: (state) ->
    atom.config.observe 'nord-atom-ui.tabSizing', (noFullWidth) ->
      setTabSizing(noFullWidth)

    atom.config.observe 'nord-atom-ui.darkerFormFocusEffect', (noSnowLight) ->
      setFormFocusEffect(noSnowLight)

    atom.config.observe 'nord-atom-ui.uiFontSize', (uiFontSize) ->
      setFontSize(uiFontSize)

  deactivate: ->
    unsetTabSizing()
    unsetFormFocusEffect()
    unsetFontSize()

setFormFocusEffect = (noSnowLight) ->
  if (noSnowLight)
    root.setAttribute('theme-nord-atom-ui-form-focus-effect', "nosnowlight")
  else
    unsetFormFocusEffect()

setTabSizing = (noFullWidth) ->
  if (noFullWidth)
    unsetTabSizing()
  else
    root.setAttribute('theme-nord-atom-ui-tabsizing', "nofullwidth")

setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFormFocusEffect = ->
  root.removeAttribute('theme-nord-atom-ui-form-focus-effect')

unsetTabSizing = ->
  root.removeAttribute('theme-nord-atom-ui-tabsizing')

unsetFontSize = ->
  root.style.fontSize = ''
