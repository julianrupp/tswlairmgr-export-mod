TSW Lair Manager Export
=======================

This is a mod for The Secret World that lets you export the counts of all lair fragments in your inventory and personal bank (if open).
It is meant to be used with [TSW Lair Manager](http://github.com/julianrupp/tswlairmgr).


Installation
------------

Create a subfolder called `TSWLMExport` in your TSW installation's mod folder (`\Data\Gui\Customized\Flash`) and copy `TSWLMExport.swf`, `LoginPrefs.xml` and `Modules.xml` into it.

The directory structure should look like this:

	C:\Program Files (x86)\Steam\steamapps\common\The Secret World\Data\Gui\Customized\Flash\TSWLMExport\TSWLMExport.swf
	C:\Program Files (x86)\Steam\steamapps\common\The Secret World\Data\Gui\Customized\Flash\TSWLMExport\LoginPrefs.xml
	C:\Program Files (x86)\Steam\steamapps\common\The Secret World\Data\Gui\Customized\Flash\TSWLMExport\Modules.xml

(Your game's installation path may vary.)


Using
-----

This mod integrates with [Viper's Topbar Information Overload](https://forums.thesecretworld.com/showthread.php?45461-Add-on-Topbar-Information-Overload); I haven't even tested it without VTIO installed. In case you don't have VTIO installed and don't see a clickable icon to open the TSW Lair Manager Export window, probably the fallback code failed. Please notify me, or, if you know how to make TSW mods, send me a pull request :)

You can also open the TSW Lair Manager Export window with a chat command:

	/setoption tswlmexport_window true
	/optioneinstellen tswlmexport_window true
	/régleroption tswlmexport_window true


Notes
-----

I still wonder why I even did this. I consider Flash a failed, dying technology, and AS2 is incredibly crippled.
I just learned the absolute necessary minimum to create this mod by trial and error, and have no intentions of pushing that further.
I'm happy that it's somehow working, even if it looks bad.


Changelog
---------

#### Version 1.0

##### 1.0.2
-	Now also available in German and French! (Please contact me if you spot any mistakes in the french translation)

##### 1.0.1
-	Fixed minor VTIO integration bug.

##### 1.0.0
-	The initial version. It's done, yay!
-	Supports all 8 classic lairs.


Known issues
------------

Once you've clicked the text field to copy the code from it, it keeps hogging the input cursor focus, even when you close the window. (Try entering a chat command in the chat box directly after closing the window!). Focus jumps back to the text box as soon as you press Shift, Ctrl or Alt. This bug also seems to appear with other mods.

Workaround: Open your character sheet, go to Gear Manager, and select (single click) one build from the list. Alternatively reload your UI (Ctrl+Shift+F1).


Donations
---------

First and foremost: This is a private hobby project on which I've been working in my spare time.

I wrote this tool because I saw something with huge room for optimization, had ideas how to do it, and the technical knowledge to actually implement those ideas. Originally targeted at my cabal, I sure also have an use for it myself, too. This software will always stay open source and with that, available free of charge.

That being said, if you like TSW Lair Manager so much that you want to support me financially, I've now set up [PayPal donations](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=VSNL78C29M9QN). This is entirely voluntary and will not get you anything special; there'll be no mentions of any donators' names, extra features or anything like that. I certainly do appreciate your donations though :)