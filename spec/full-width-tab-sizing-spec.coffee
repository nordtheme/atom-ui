# Copyright (c) 2016-present Sven Greb <development@svengreb.de>
# This source code is licensed under the MIT license found in the license file.

describe "Nord Atom UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('nord-atom-ui')

  it "allows to disable full-width tab sizing to be set via theme settings", ->
    expect(document.documentElement.getAttribute('theme-nord-atom-ui-tabsizing')).toBe null

    atom.config.set('nord-atom-ui.tabSizing', false)
    expect(document.documentElement.getAttribute('theme-nord-atom-ui-tabsizing')).toBe 'nofullwidth'
