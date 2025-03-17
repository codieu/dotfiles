```css
       __/) 
    .-(__(=:
 |\ |    \)     /   _/_ /)   //      
 \ ||        __/ __ /  // o // _  _  
  \||       (_/_(_)<__//_<_</_</_/_)_
   \|                />              
    |  codie;dots O </  with ✧˚ ♡ · .
```         

> [!NOTE]
> For more information visit each modules README.md

cool module based dotfiles v2

## tulip cli

A control point of everything this setup adds

### tulip module

Use it to link/unlink, display modules found in /path/to/dots/modules.

Link a module [TODO] or all modules:
```bash
 tulip module link polybar
 tulip module link all
```
ls/tree the module dir
```bash
 tulip module ls/tree
```
It also passes arguments to ls/tree respectively
```bash
 tulip module ls -la
```

To link all the scripts/bins initialy
```bash
 /path/to/dots/bin/tulip module linkbin
```
this will symlink /path/to/dots/bin to /usr/local/bin directory

#### tulip module edit

	TODO: fill this
	
### tulip pack

Use it to install arch/aur packages used by dotfiles.
Kind of a unnessecary edition but proven useful 
personaly so im inclined to keep it.

install:
```bash
 tulip pack install editors
```
list:
```bash
 tulip pack ls -l
```

### tulip font
Load fonts used by various apps
Font folders are symlinked to /usr/share/fonts

apply or deapply :
```bash
 tulip font apply CaskaydiaCoveNerd 
 tulip font del CaskaydiaCoveNerd 
```
list:
```bash
 tulip font ls -l
```
