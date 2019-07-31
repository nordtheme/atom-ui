# Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
# Copyright (C) 2016-present Sven Greb <development@svengreb.de>

# Project:    Nord Atom UI
# Repository: https://github.com/arcticicestudio/nord-atom-ui
# License:    MIT

describe "Nord Atom UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('nord-atom-ui')

  it "allows to use darker colors for focused forms to be set via theme settings", ->
    expect(document.documentElement.getAttribute('theme-nord-atom-ui-form-focus-effect')).toBe null

    atom.config.set('nord-atom-ui.darkerFormFocusEffect', true)
    expect(document.documentElement.getAttribute('theme-nord-atom-ui-form-focus-effect')).toBe 'nosnowlight'
