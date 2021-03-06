### General Info

Using Edit with Emacs Chrome extension v1.12, Aquamacs 23.3.50.1, and latest yasnippet

### Installation

* Get and install Edit With Emacs extension from
  https://chrome.google.com/webstore/detail/edit-with-emacs/ljobjlafonikaiipfkggjbhkghgicgoh?hl=en

* Restart your browser

* Get the edit-server.el by navigating here in the browser:
  chrome-extension://ljobjlafonikaiipfkggjbhkghgicgoh/servers/edit-server.el
  and place it somewhere in your emacs load-path, maybe ~/.emacs.d/elisp
  
* Get and install yasnippet following directions here: http://www.emacswiki.org/emacs/Yasnippet#toc3

* Get and install markdown-mode in ~/.emacs.d/plugins using: `git clone git://jblevins.org/git/markdown-mode.git`

* Install the included snippets in ~/.emacs.d/plugins/yasnippet/snippets/markdown-mode/

### Emacs

Add the entries from the included .emacs file to your ~/.emacs file and restart emacs.

### Usage

Be sure the extension is installed in Chrome and the edit server is running in emacs.  
With the above, you should be able to look at the preferences for the "Edit with Emacs"  
extension and do a successful test hit of the edit server running in emacs.

When navigating to help2.opscode.com, your browser should pick this up and create  
an edit button at the bottom left of the textarea.  If you click that edit button, a  
window having a Markdown major mode and yas minor mode should pop in your emacs.  
When you save Markdown in that window, it will be sent to the textarea that popped the  
window originally and you can Preview there in HelpSpot

### Example Template Expansion

When in the emacs Markdown/yas window popped up by a textarea from
Chrome, we can enter a template key shortcut, like the one from the
"anyupdates" template and press TAB to expand the template, like this:

      upd8<TAB>

The template will be expanded in place of the "upd8" key, like this

>Hi,

>Do you have any updates on this ticket?

>Thanks,

>Sean

And "Hi," will be selected, so that we can enter the customers name,
if we know it. Otherwise, we can hit \<TAB\> again and the text as shown
above will be ready to save up to HelpSpot
