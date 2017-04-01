<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-atom-ui/develop/assets/nord-atom-ui-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-atom-ui/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-atom-ui.svg"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg"/></a> <img src="https://atom.io/favicon.ico" width=24 height=24/> <a href="https://github.com/atom/atom/releases/tag/v1.13.0"><img src="https://img.shields.io/badge/Atom->=v1.13.0-green.svg"/></a> <a href="https://atom.io/themes/nord-atom-ui"><img src="https://img.shields.io/apm/v/nord-atom-ui.svg"/></a> <a href="https://atom.io/themes/nord-atom-ui"><img src="https://img.shields.io/apm/dm/nord-atom-ui.svg"/></a></p>

---

# 0.11.0
*2017-04-01*
## Features
### Package Support
❯ Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/515636" width=16 height=16/>  [`indent-guide-improved`](https://atom.io/packages/indent-guide-improved) to adapt to the UI style. This matches the indent guide improvements implemented in [arcticicestudio/nord-atom-syntax #43](https://github.com/arcticicestudio/nord-atom-syntax/issues/43). (@arcticicestudio, #64, e185d481)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/24577073/8a3486da-16c7-11e7-83a7-40cceaa7c87c.gif"/></p>

## Improvements
### Tabs
❯ The close icon of inactive tabs is now only colored bright on hover to match the stye of active tabs. (@arcticicestudio, #65, 3d86698b)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/24576737/eff70b1a-16c1-11e7-8480-54dfbe775894.gif"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/24576880/01c644d0-16c4-11e7-8234-87ba9bb46b53.gif"/></p>

## Bug Fixes
### Documentation
❯ Fixed a typo in the project description. This is a sub-task of [arcticicestudio/nord #20](https://github.com/arcticicestudio/nord/issues/20). (@arcticicestudio, #60, 443531b9)
  > **A** arctic ... -> **An** arctic ...

# 0.10.2
*2017-03-06*
## Bug Fixes
❯ Fixed the overall height increase of the tab-bar when dragging tabs by disabling the placeholder bar. This also makes the drag & drop animation to be smoother and look more flat. (@maliMirkec, #56, 031da28b)

<p align="center"><strong>Linux (<img src="https://wiki.archlinux.org/favicon.ico" width=16 height=16/> Arch Linux, <img src="https://www.gnome.org/wp-content/themes/gnome-grass/images/favicon.ico" width=16 height=16/> GNOME DE)</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/23586171/074a03c2-0190-11e7-9580-a1f817059429.gif"/><br><strong> <img src="https://developer.apple.com/favicon.ico" width=16 height=16/> macOS (Sierra)</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/23586192/83046b6a-0190-11e7-9d3e-3f007a507466.gif"/></p>

❯ Fixed the tab close icon of tabs by moving it to the right side (macOS only) to not collide with icons of any icon package, like [`file-icons`](https://atom.io/packages/file-icons) or [`seti-icons`](https://atom.io/packages/seti-icons) package, following recommendations in the conversations [atom/tabs #378](https://github.com/atom/tabs/issues/378) and [atom/one-dark-ui #179](https://github.com/atom/one-dark-ui/issues/179). A left-sided tab close icon (macOS only) should be better moved into a optional theme setting to not mess with people's muscle memory or wait to be implemented into the Atom core [tabs](https://github.com/atom/tabs) package. (@peteringram0, #57, c03130db)

<p align="center"><strong>Before with <code>file-icons</code> package</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/23630275/d2df037c-02ba-11e7-9948-32f0dae70c6d.png"/><br><strong>Before with <code>seti-icons</code> package</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/23630292/e2e3dfae-02ba-11e7-9f5c-2a261c93c499.png"/></p>
<p align="center"><strong>After with <code>file-icons</code> package</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/23630324/016f325c-02bb-11e7-8ad0-e295446f6eff.png"/><br><strong>After with <code>seti-icons</code> package</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/23630345/183d8a88-02bb-11e7-8214-516bc35fcb76.png"/></p>

# 0.10.1
*2017-01-25*
## Bug Fixes
❯ Fixed unreadable text color for of all focused floating modal overlays by adding the new `syntax--` class prefix introduced by the new Atom syntax theme package API change regarding the shadow DOM removal for Atom >= 1.13.0. (@abrthel, #53, 1598fabd)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/22285966/ed31d25a-e2ed-11e6-9355-c53db4fec0d5.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/22285980/f4cfede4-e2ed-11e6-9906-fa732ca787de.png"/></p>

# 0.10.0
*2017-01-24*

**Please note that the minimal version for this theme is now >=1.13.0 due to the Atom theme API change!**

## Improvements
❯ Migrated to the new Atom theme API.  
Starting from Atom version 1.13, the contents of `atom-text-editor` [elements are no longer encapsulated within a shadow DOM boundary](http://blog.atom.io/2016/11/14/removing-shadow-dom-boundary-from-text-editor-elements.html).  
This means the `:host` and `::shadow` pseudo-selectors should be completely removed and all syntax selectors should be prepended with `syntax--`.
To prevent breakage with existing style sheets, Atom will automatically upgrade selectors for versions less or equal to 1.12. (@arcticicestudio, #31, 42d7f7ba)

![](http://blog.atom.io/img/posts/shadow-dom.png)

# 0.9.0
*2016-12-01*
## Improvements
❯ Single tabs are now colored with the base background color to better match the theme ambience. (@arcticicestudio, #44, ee8a0c60)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20312911/645613e4-ab55-11e6-8d53-2d38f70627b8.png"/></p>
<p align="center"><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20313106/1be50772-ab56-11e6-9315-3e93ae14d9fb.gif"/></p>

❯ The background color of selected list items is now slightly darker (`nord2` to `nord1`) to better fit the darker ambience and improve the text visibility. (@arcticicestudio, #48, ddba34d5)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20810519/56b36cb6-b80a-11e6-9ba4-3364796a8cdb.png"/></p>
<p align="center"><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20810543/66f4cca0-b80a-11e6-817b-c52b596584b6.png"/></p>

## Bug Fixes
❯ Selected folders in `tree-view` had a transparent background color unlike files which made it hard to navigate using the keyboard.
This has been changed to colorize the background color of selected folders. (@marza91, #47, 6c2c13ea)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/20810298/89cd19ea-b809-11e6-9f5b-da198429df80.png"/><br><img src="https://cloud.githubusercontent.com/assets/7836623/20810306/8d402f72-b809-11e6-8609-2339974c20d7.gif"/></p>

# 0.8.1
*2016-11-23*
## Bug Fixes
❯ Fixed unreadable bold-formated text shown in the [`markdown-preview`](https://atom.io/packages/markdown-preview) tab.
The text color was too bright and therefore was not be seen. (@ToxidoLiu, #45, 9f6ccf16)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/5713865/20552163/100cff76-b183-11e6-9955-98ba3c37b2b2.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20575493/ca7e7dae-b1b9-11e6-9fab-3e8baa3c4303.png"/></p>

❯ Fixed unreadable plain text in [`markdown-preview`](https://atom.io/packages/markdown-preview) code blocks.  
The text color was equal the to the background color and was therefore not be seen. (@arcticicestudio, #46, 6a55c98d)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20575212/96694f7c-b1b8-11e6-8baf-f5bb255c9471.png"/><br><img src="https://cloud.githubusercontent.com/assets/7836623/20575216/996ff6ee-b1b8-11e6-8e56-abee385852cd.gif"/></p>

<p align="center"><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20575286/ef3f6640-b1b8-11e6-9f20-61cb01259544.png"/></p>

# 0.8.0
*2016-11-16*
## Features
### Theme Settings
❯ Implemented a new theme setting to use darker colors for focused forms like the `find-and-replace`- and `project-search` inputs. (@arcticicestudio, #43, 38d1ca07)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/20313180/636b4f48-ab56-11e6-8502-ad99f163c94b.png"/><br><strong>With default snow-inspired focus effect</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20311958/f694259c-ab51-11e6-8c2e-cf9dae01b774.gif"/><br><strong>With enabled setting for darker focus color effect</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20318435/871389f6-ab6a-11e6-8ab4-f33a5a63ae78.gif"/></p>

## Bug Fixes
❯ Fixed regexp groups in the `find-and-replace` inputs getting obscured if the current syntax highlighting theme uses light colors for these pattern. (@arcticicestudio, #39, fca9d9f5)

<p align="center"><strong>Selected characters are now colored correctly</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20318449/998233c6-ab6a-11e6-9242-b1fca03bee9b.gif"/><br><strong>With enabled "Darker Form-Focusing Effect" theme setting the current syntax highlighting remains preserved</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20318452/9ccd68fc-ab6a-11e6-8886-1c2cacce14cf.gif"/></p>

# 0.7.0
*2016-11-12*
## Features
### Package Support
❯ Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/25722" width=16 height=16/>  [`tool-bar`](https://atom.io/packages/tool-bar) by [suda](https://github.com/suda) to make the tool-bar package fit more with the surrounding UI. (@arcticicestudio, #41, 010119c6)  
<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238574/f3ec4780-a8ee-11e6-8b4d-45b28ea5e6bb.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238582/03dae0c0-a8ef-11e6-9cbd-2d8eb4785143.png"/></p>

❯ Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/7209979" width=16 height=16/>  [`minimap-git-diff`](https://atom.io/packages/minimap-git-diff) by [atom-minimap](https://github.com/atom-minimap) to make the minimap-git-diff package fit more with the theme color palette. (@arcticicestudio, #42, e5251f7)  
<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238616/dcff8702-a8ef-11e6-9e7b-19e9aa813e87.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238617/e3f5c8aa-a8ef-11e6-8acb-56e4acf568b8.png"/></p>

## Improvements
❯ The current active tab is now colored with a slightly lighter background color to differ from inactive tabs. (@arcticicestudio, #40, bc213c13)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/20320075/d9b84d6c-ab70-11e6-87ea-13707830719b.png"/></p>

# 0.5.1
*2016-11-01*
## Bug Fixes
### Documentation
❯ Fixed the `README` rendering caused by an malformed HTML tag chain

# 0.5.0
*2016-11-01*
## Features
### Theme Settings
❯ The theme can now be tweaked by using the theme settings which can be found by clicking on the gear icon next to the *UI Theme* drop-down. (@arcticicestudio, #36, 98dfc25d)  
The following options are available:

*Full-Width Tab Sizing*
> In full width mode, tabs will fill the whole tab bar.

![](https://cloud.githubusercontent.com/assets/7836623/19620532/ef4ef634-987f-11e6-89bd-5dda9bcade88.png)

### Package Support
❯ Implemented support for the community package <img src="https://avatars1.githubusercontent.com/u/836375" width=16 height=16/>  [`script`](https://atom.io/packages/script) by [rgbkrk](https://github.com/rgbkrk) (@arcticicestudio, #37, b8f7e87a)

# 0.4.0
*2016-11-01*
## Features
### Package Support
❯ Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/6087523" width=16 height=16/>  [`imdone-atom`](https://atom.io/packages/imdone-atom) by [imdone](https://github.com/imdone) (@arcticicestudio, #38, 4214c7fa)

# 0.3.0
*2016-09-29*
## Features
### Package Support
❯ Implemented support for the community package <img src="https://avatars1.githubusercontent.com/u/933880" width=16 height=16/>  [`build`](https://atom.io/packages/build) by [noseglid](https://github.com/noseglid) (@arcticicestudio, #34, dfebe0c6)

# 0.2.0
*2016-09-20*
## Improvements
### Controls
❯ The background color of checked checkboxes is now the accent color instead of lime/green (@arcticicestudio, #33, 55b0be1f)

## Bugfixes
### Documentation
❯ Fixed all unrendered images in the [atom.io](https://atom.io/themes/nord-atom-ui) package README by using the `https://raw.githubusercontent.com` domain (@arcticicestudio, #32, 9db9fed2)

# 0.1.0
*2016-09-20*
**Initial APM package release version!**  
*Closes the [APM Package Release](https://github.com/arcticicestudio/nord-atom-ui/milestone/1) milestone.*

## Features
A complete list of all implemented features can be found in the [README](https://github.com/arcticicestudio/nord-atom-ui/blob/develop/README.md#features) section.

### Package Support
The [Package Support](https://github.com/arcticicestudio/nord-atom-ui/milestone/2) milestone backlog ticket #20 contains a list of all currently implemented- and planned package supports.  
Detailed information of already implemented packages can be found in the [project wiki](https://github.com/arcticicestudio/nord-atom-ui/wiki/Package-Support).

**Community**  
  - <img src="https://avatars3.githubusercontent.com/u/2833514" width=16 height=16/>  [`color-picker`](https://atom.io/packages/color-picker) by [thomaslindstrom](https://github.com/thomaslindstrom) (@arcticicestudio, #21, 132eb795)
  - <img src="https://avatars0.githubusercontent.com/u/659763" width=16 height=16/>  [`expose`](https://atom.io/packages/expose) by [mrodalgaard](https://github.com/mrodalgaard) (@arcticicestudio, #30, 4e70ed1d)
  - <img src="https://avatars3.githubusercontent.com/u/7209979" width=16 height=16/>  [`minimap`](https://atom.io/packages/minimap) by [atom-minimap](https://github.com/atom-minimap) (@arcticicestudio, #28, 8ba2bddc)
  - <img src="https://avatars0.githubusercontent.com/u/696872" width=16 height=16/>  [`project-manager`](https://atom.io/packages/project-manager) by [danielbrodin](https://github.com/danielbrodin) (@arcticicestudio, #29, 233233dd)

## <img src="https://avatars0.githubusercontent.com/u/1089146" width=16 height=16/> Core
  - [`autocomplete-plus`](https://atom.io/packages/autocomplete-plus) (@arcticicestudio, #22, 44714fd6)
  - [`deprecation-cop`](https://atom.io/packages/deprecation-cop) (@arcticicestudio, #23, e9b9a1b2)
  - [`markdown-preview`](https://atom.io/packages/markdown-preview) (@arcticicestudio, #27, 11ed42e6)
  - [`timecop`](https://atom.io/packages/timecop) (@arcticicestudio, #24, 20653ad8)
