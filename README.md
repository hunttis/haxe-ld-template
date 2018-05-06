# haxe-ld-template

A Ludum Dare template using HaxeFlixel. Includes Visual Studio Code settings for default build task.

Updated now for HaxeFlixel 4.4.0 and OpenFL 8!

## Installation

### If you don’t have haxe, install it manually from [haxe.org](https://haxe.org) or with something like homebrew (on the mac)

```
brew install haxe
```

If you used Homebrew, add the following to your .bashrc or equivalent file:
```
export HAXE_STD_PATH="/usr/local/lib/haxe/std"
```

### Once you have haxe installed

```
haxelib setup

haxelib install flixel
haxelib install flixel-tools

haxelib run lime setup
haxelib run flixel setup
```

### Running the template

Using neko is no longer a good idea now that OpenFL has been updated to version 8. Using the HTML5-build is highly recommended as it has far superior performance compared to neko now.

```
lime test html5
```

### Developing in server mode

Run the haxe compiler in server mode to speed up compilation:

```
haxe --wait 6000
```

Start a second terminal window, and in it BrowserSync to refresh the software on build:

```
npm install
npm run start
```

Compile to see changes. I recommend you make a comfortable keyboard shortcut for building the default build (which is now html5), so browsersync will automatically refresh when you build.

```
lime test html5
```
