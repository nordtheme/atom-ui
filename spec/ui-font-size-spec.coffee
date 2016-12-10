describe "Nord Atom UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('nord-atom-ui')

  it "allows to change the UI font size to be set via theme settings", ->
    expect(document.documentElement.style.fontSize).toBe '14px'

    atom.config.set('nord-atom-ui.uiFontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'
