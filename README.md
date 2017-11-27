# haxe-ld-template

A Ludum Dare template using HaxeFlixel. Includes Visual Studio Code settings for default build task.

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

haxelib run flixel setup
```

### Running the template

```
lime test neko
```

### Developing in server mode

Run the haxe compiler in server mode to speed up compilation:

```
haxe --wait 6000
```

Start BrowserSync to refresh the software on build:

```
npm install
npm run start
```

Compile to see changes

```
lime test html5
```

## Notice
As it currently stands, HaxeFlixel is a bit behind OpenFL and Lime-versions. If you ever decide to run `haxelib upgrade`, make sure you don’t upgrade openFL and Lime. In case you do, you can still set haxelib to use older versions with `haxelib set lime 2.9.1` and `haxelib set openfl 3.6.1`

As soon as HaxeFlixel is updated to support newer Lime and OpenFL versions, I will update this template.
