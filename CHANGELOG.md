<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-atom-ui/develop/assets/nord-atom-ui-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-atom-ui/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-atom-ui.svg"/></a> <img src="https://atom.io/favicon.ico" width=24 height=24/> <a href="https://atom.io/themes/nord-atom-ui"><img src="https://img.shields.io/apm/v/nord-atom-ui.svg"/></a> <a href="https://atom.io/themes/nord-atom-ui"><img src="https://img.shields.io/apm/dm/nord-atom-ui.svg"/></a></p>

---

# 0.8.0 (2016-11-16)
## Features
### Theme Settings
Implemented a new theme setting to use darker colors for focused forms like the `find-and-replace`- and `project-search` inputs. (@arcticicestudio, #43, 38d1ca07)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/20313180/636b4f48-ab56-11e6-8502-ad99f163c94b.png"/><br><strong>With default snow-inspired focus effect</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20311958/f694259c-ab51-11e6-8c2e-cf9dae01b774.gif"/><br><strong>With enabled setting for darker focus color effect</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20318435/871389f6-ab6a-11e6-8ab4-f33a5a63ae78.gif"/></p>

## Bug Fixes
Fixed regexp groups in the `find-and-replace` inputs getting obscured if the current syntax highlighting theme uses light colors for these pattern. (@arcticicestudio, #39, fca9d9f5)

<p align="center"><strong>Selected characters are now colored correctly</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20318449/998233c6-ab6a-11e6-9242-b1fca03bee9b.gif"/><br><strong>With enabled "Darker Form-Focusing Effect" theme setting the current syntax highlighting remains preserved</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20318452/9ccd68fc-ab6a-11e6-8886-1c2cacce14cf.gif"/></p>

# 0.7.0 (2016-11-12)
## Features
### Package Support
Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/25722" width=16 height=16/>  [`tool-bar`](https://atom.io/packages/tool-bar) by [suda](https://github.com/suda) to make the tool-bar package fit more with the surrounding UI. (@arcticicestudio, #41, 010119c6)  
<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238574/f3ec4780-a8ee-11e6-8b4d-45b28ea5e6bb.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238582/03dae0c0-a8ef-11e6-9cbd-2d8eb4785143.png"/></p>


Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/7209979" width=16 height=16/>  [`minimap-git-diff`](https://atom.io/packages/minimap-git-diff) by [atom-minimap](https://github.com/atom-minimap) to make the minimap-git-diff package fit more with the theme color palette. (@arcticicestudio, #42, e5251f7)  
<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238616/dcff8702-a8ef-11e6-9e7b-19e9aa813e87.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/20238617/e3f5c8aa-a8ef-11e6-8acb-56e4acf568b8.png"/></p>

## Improvements
The current active tab is now colored with a slightly lighter background color to differ from inactive tabs. (@arcticicestudio, #40, bc213c13)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/20320075/d9b84d6c-ab70-11e6-87ea-13707830719b.png"/></p>

# 0.5.1 (2016-11-01)
## Bug Fixes
### Documentation
  - Fixed the `README` rendering caused by an malformed HTML tag chain

# 0.5.0 (2016-11-01)
## Features
### Theme Settings
The theme can now be tweaked by using the theme settings which can be found by clicking on the gear icon next to the *UI Theme* drop-down. (@arcticicestudio, #36, 98dfc25d)  
The following options are available:

*Full-Width Tab Sizing*
> In full width mode, tabs will fill the whole tab bar.

![](https://cloud.githubusercontent.com/assets/7836623/19620532/ef4ef634-987f-11e6-89bd-5dda9bcade88.png)

### Package Support
  - Implemented support for the community package <img src="https://avatars1.githubusercontent.com/u/836375" width=16 height=16/>  [`script`](https://atom.io/packages/script) by [rgbkrk](https://github.com/rgbkrk) (@arcticicestudio, #37, b8f7e87a)

# 0.4.0 (2016-11-01)
## Features
### Package Support
  - Implemented support for the community package <img src="https://avatars3.githubusercontent.com/u/6087523" width=16 height=16/>  [`imdone-atom`](https://atom.io/packages/imdone-atom) by [imdone](https://github.com/imdone) (@arcticicestudio, #38, 4214c7fa)

# 0.3.0 (2016-09-29)
## Features
### Package Support
  - Implemented support for the community package <img src="https://avatars1.githubusercontent.com/u/933880" width=16 height=16/>  [`build`](https://atom.io/packages/build) by [noseglid](https://github.com/noseglid) (@arcticicestudio, #34, dfebe0c6)

# 0.2.0 (2016-09-20)
## Improvements
### Controls
  - The background color of checked checkboxes is now the accent color instead of lime/green (@arcticicestudio, #33, 55b0be1f)

## Bugfixes
### Documentation
  - Fixed all unrendered images in the [atom.io](https://atom.io/themes/nord-atom-ui) package README by using the `https://raw.githubusercontent.com` domain (@arcticicestudio, #32, 9db9fed2)

# 0.1.0 (2016-09-20)
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
