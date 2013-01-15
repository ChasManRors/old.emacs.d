;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (coffee-mode) "coffee-mode/coffee-mode" "coffee-mode/coffee-mode.el"
;;;;;;  (20200 50623))
;;; Generated autoloads from coffee-mode/coffee-mode.el

(autoload 'coffee-mode "coffee-mode/coffee-mode" "\
Major mode for editing CoffeeScript.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))

(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;;***

;;;### (autoloads (col-highlight-flash col-highlight-set-interval
;;;;;;  col-highlight-toggle-when-idle column-highlight-mode col-highlight-period
;;;;;;  col-highlight-vline-face-flag column-highlight) "col-highlight/col-highlight"
;;;;;;  "col-highlight/col-highlight.el" (20234 3919))
;;; Generated autoloads from col-highlight/col-highlight.el

(let ((loads (get 'column-highlight 'custom-loads))) (if (member '"col-highlight/col-highlight" loads) nil (put 'column-highlight 'custom-loads (cons '"col-highlight/col-highlight" loads))))

(defvar col-highlight-vline-face-flag t "\
*Non-nil means `column-highlight-mode' uses `col-highlight-face'.
nil means that it uses `vline-face'.")

(custom-autoload 'col-highlight-vline-face-flag "col-highlight/col-highlight" t)

(defvar col-highlight-period 1 "\
*Number of seconds to highlight the current column.")

(custom-autoload 'col-highlight-period "col-highlight/col-highlight" t)

(defface col-highlight '((t (:background "SlateGray3"))) "\
*Face for current-column highlighting by `column-highlight-mode'.
Not used if `col-highlight-vline-face-flag' is nil." :group (quote column-highlight) :group (quote faces))

(defvar column-highlight-mode nil "\
Non-nil if Column-Highlight mode is enabled.
See the command `column-highlight-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `column-highlight-mode'.")

(custom-autoload 'column-highlight-mode "col-highlight/col-highlight" nil)

(autoload 'column-highlight-mode "col-highlight/col-highlight" "\
Toggle highlighting the current column.
With ARG, turn column highlighting on if and only if ARG is positive.

Column-Highlight mode uses the functions
`col-highlight-unhighlight' and `col-highlight-highlight'
on `pre-command-hook' and `post-command-hook'.

\(fn &optional ARG)" t nil)

(defalias 'toggle-highlight-column-when-idle 'col-highlight-toggle-when-idle)

(autoload 'col-highlight-toggle-when-idle "col-highlight/col-highlight" "\
Turn on or off highlighting the current column when Emacs is idle.
With prefix argument, turn on if ARG > 0; else turn off.

\(fn &optional ARG)" t nil)

(autoload 'col-highlight-set-interval "col-highlight/col-highlight" "\
Set the delay before highlighting current column when Emacs is idle.
Whenever Emacs has been idle for N seconds, the current column is
highlighted using the face that is the value of variable
`col-highlight-face'.

To turn on or off automatically highlighting the current column
when Emacs is idle, use `\\[toggle-highlight-column-when-idle].

\(fn N)" t nil)

(defalias 'flash-column-highlight 'col-highlight-flash)

(autoload 'col-highlight-flash "col-highlight/col-highlight" "\
Highlight the current column for `col-highlight-period' seconds.
With a prefix ARG, highlight for that many seconds.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
   ...
   ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (hlt-copy-props hlt-mouse-copy-props hlt-yank-props
;;;;;;  hlt-toggle-use-overlays-flag hlt-mouse-face-each-line hlt-highlight-single-quotations
;;;;;;  hlt-replace-highlight-face hlt-unhighlight-region-for-face
;;;;;;  hlt-unhighlight-region hlt-highlight-regexp-to-end hlt-highlight-regexp-region
;;;;;;  hlt-highlight-region hlt-highlight hlt-eraser-mouse hlt-highlighter-mouse
;;;;;;  hlt-eraser hlt-highlighter hlt-choose-default-face hlt-default-copy/yank-props
;;;;;;  hlt-use-overlays-flag hlt-max-region-no-warning) "highlight/highlight"
;;;;;;  "highlight/highlight.el" (20274 55217))
;;; Generated autoloads from highlight/highlight.el

(defvar hlt-max-region-no-warning 100000 "\
*Maximum size (chars) of region to highlight without confirmation.
This is used only for highlighting of a regexp, which can be slow.")

(custom-autoload 'hlt-max-region-no-warning "highlight/highlight" t)

(defvar hlt-use-overlays-flag 'only "\
*Non-nil means use overlays to highlight; nil means use text properties.
This value also affects some actions, such as unhighlighting, for text
that is highlighted.  If the value is `only' (the default value), then
those actions only affect overlay highlighting.  Otherwise, they
affect both kinds of highlighting.")

(custom-autoload 'hlt-use-overlays-flag "highlight/highlight" t)

(defvar hlt-default-copy/yank-props '(face) "\
*Properties that `hlt-copy-props' and `hlt-yank-props' use by default.
You can use a prefix argument with those commands to override the
default behavior.
Either a list of properties (symbols) or `t', meaning all properties.")

(custom-autoload 'hlt-default-copy/yank-props "highlight/highlight" t)

(autoload 'hlt-choose-default-face "highlight/highlight" "\
Choose a face for highlighting.

\(fn FACE)" t nil)

(autoload 'hlt-highlighter "highlight/highlight" "\
Highlight the text you drag the mouse over.
The face used is the last face that was used for highlighting.
You can use command `hlt-choose-default-face' to choose a different face.

\(fn START-EVENT)" t nil)

(autoload 'hlt-eraser "highlight/highlight" "\
Erase highlights that you click or drag the mouse over.
If `hlt-use-overlays-flag' is non-nil, then overlay highlighting is
removed for the last face that was used for highlighting.  (You can
use command `hlt-choose-default-face' first to choose a different
face.)  If `hlt-use-overlays-flag' is not `only', then text-property
highlighting is removed for *ALL* faces (not just highlighting faces).
This means, in particular, that a value of nil erases both overlays
for the last face and text properties for all faces.

\(fn START-EVENT)" t nil)

(autoload 'hlt-highlighter-mouse "highlight/highlight" "\
Same as `hlt-highlighter', but for binding to a menu item.

\(fn)" t nil)

(autoload 'hlt-eraser-mouse "highlight/highlight" "\
Same as `hlt-eraser', but for binding to a menu item.

\(fn)" t nil)

(autoload 'hlt-highlight "highlight/highlight" "\
Highlight region, regexp (PREFIX +), or unhighlight region (PREFIX -).
PREFIX arg non-negative means `hlt-highlight-regexp-region'
PREFIX arg negative means `hlt-unhighlight-region'
PREFIX arg nil means `hlt-highlight-region'.
If the region is not active or it is empty, then use the whole buffer.
The face used is the last face that was used for highlighting.
You can use command `hlt-choose-default-face' to choose a different face.

\(fn &optional PREFIX)" t nil)

(autoload 'hlt-highlight-region "highlight/highlight" "\
Highlight the region or new input.
Optional args START and END are the limits of the area to act on.
  They default to the region limits.
Optional 3rd arg FACE is the face to use.
  Interactively, this is the last face that was used for highlighting.
  (You can use command `hlt-choose-default-face' to choose a different face.)
Optional 4th arg MSG-P non-nil means to display a progress message.
Optional 5th arg MOUSE-P non-nil means use the `mouse-face' property,
 not the `face' property.
Interactively, MOUSE-P is provided by the prefix arg.

If the region is not active or it is empty, then:
 - If `hlt-use-overlays-flag' is non-nil, apply FACE to the
   entire buffer.  If MOUSE-P is non-nil, use the `mouse-face'
   property; otherwise, use the `face' property.
 - Else, if MOUSE-P is non-nil, then apply FACE as the `mouse-face'
   property to the whole buffer.
 - Else, if interactive, apply FACE to the next character you type,
   and add FACE to the facemenu menu.
 - Else, apply FACE as the `face' property to the whole buffer.

\(fn &optional START END FACE MSG-P MOUSE-P)" t nil)

(autoload 'hlt-highlight-regexp-region "highlight/highlight" "\
Highlight regular expression REGEXP in region.
If the region is not active or it is empty, then use the whole buffer.
Optional args START and END are the limits of the area to act on.
  They default to the region limits.
Optional 4th arg FACE is the face to use.
  Interactively, this is the last face that was used for highlighting.
  (You can use command `hlt-choose-default-face' to choose a different face.)
Optional 5th arg MSG-P:
  t means to treat this as an interactive call when deciding to
    display all messages.
  non-nil & non-t means to display only error and warning messages.
Optional 6th arg MOUSE-P non-nil means to use `mouse-face' property,
  not `face'.  Interactively, this is provided by the prefix arg.
Optional 7th arg NTH determines which regexp subgroup is highlighted.
  If nil or 0, the entire regexp is highlighted.  Otherwise, the NTH
  regexp subgroup (\"\\\\(...\\\\)\" expression) is highlighted.
  (NTH is not available interactively.)

\(fn &optional START END REGEXP FACE MSG-P MOUSE-P NTH)" t nil)

(autoload 'hlt-highlight-regexp-to-end "highlight/highlight" "\
Highlight text after cursor that matches REGEXP.
Optional 2nd arg FACE is the face to use.
  Interactively, this is the last face that was used for highlighting.
  (You can use command `hlt-choose-default-face' to choose a different face.)
Optional 3rd arg MSG-P non-nil means display a progress message.
Optional 4th arg MOUSE-P non-nil means to use `mouse-face' property,
  not `face'.  Interactively, this is provided by the prefix arg.
Optional 5th arg NTH determines which regexp subgroup is highlighted.
  If nil or 0, the entire regexp is highlighted.  Otherwise, the NTH
  regexp subgroup (\"\\\\(...\\\\)\" expression) is highlighted.
  (NTH is not available interactively.)

\(fn REGEXP &optional FACE MSG-P MOUSE-P NTH)" t nil)

(autoload 'hlt-unhighlight-region "highlight/highlight" "\
Remove all highlighting in region.
If the region is not active or it is empty, then use the whole buffer.
If `hlt-use-overlays-flag' is non-nil, then overlay highlighting is
removed.  If `hlt-use-overlays-flag' is not `only', then text-property
highlighting is removed.  This means, in particular, that a value of
nil removes both overlays and text properties.

Optional args START and END are the limits of the area to act on.
  They default to the region limits.
Optional 3rd arg FACE non-nil means delete only highlighting that uses
  FACE.  Nil means delete all highlighting.
Optional 4th argument MSG-P non-nil means display a progress message.
Optional 5th arg MOUSE-P non-nil means use `mouse-face' property, not
  `face'.  Interactively, MOUSE-P is provided by the prefix arg.

\(fn &optional START END FACE MSG-P MOUSE-P)" t nil)

(autoload 'hlt-unhighlight-region-for-face "highlight/highlight" "\
Remove highlighting that uses FACE in region.
Same as `hlt-unhighlight-region', but removes only highlighting
that uses FACE.  Interactively, you are prompted for the face.

This works only for overlay highlighting, not text-property
highlighting.

Note: When text in the region has been highlighted using more than one
face, unhighlighting for one of those faces can mean that adjacent
highlighting outside the region appears to change.  That outside text
still has the same multiple-overlay face highlighting, but the overlay
stacking order is not the same as it was.

Optional arg FACE is the face to use.
  Interactively, this is the last face that was used for highlighting.
  (You can use command `hlt-choose-default-face' to choose a different face.)
Optional args START and END are the limits of the area to act on.
  They default to the region limits.
Optional arg MOUSE-P non-nil means use `mouse-face' property, not
  `face'.  Interactively, MOUSE-P is provided by the prefix arg.

\(fn &optional FACE START END MOUSE-P)" t nil)

(autoload 'hlt-replace-highlight-face "highlight/highlight" "\
Replace OLD-FACE by NEW-FACE in all highlights in the region.
If the region is not active or it is empty, then use the whole buffer.
With a prefix argument, replace OLD-FACE as the `mouse-face' property,
 not the `face' property.
Other arguments:
Optional args START and END are the limits of the area to act on.
  They default to the region limits.
Optional 5th argument MSG-P non-nil means display a progress message.
Optional 6th arg MOUSE-P non-nil means use `mouse-face' property, not
  `face'.  Interactively, MOUSE-P is provided by the prefix arg.

This works only for overlay highlighting, not text-property
highlighting.

\(fn OLD-FACE NEW-FACE &optional START END MSG-P MOUSE-P)" t nil)

(autoload 'hlt-highlight-single-quotations "highlight/highlight" "\
Highlight single-quoted text in the region.
This means, for example, commands and keys between `'s: `foobar'.
If the region is not active or it is empty, then use the whole buffer.
With a prefix argument, prompt for the highlighting face to use.
Otherwise, use the last face used for highlighting.
 You can also use command `hlt-choose-default-face' to choose a different face.

\(fn &optional FACE)" t nil)

(autoload 'hlt-mouse-face-each-line "highlight/highlight" "\
Put `mouse-face' on each line of buffer in region.
If the region is active and not empty, then limit mouse-face
highlighting to the region.  Otherwise, use the whole buffer.
With a prefix argument, prompt for the highlighting face to use.
Otherwise, use the last face used for highlighting.
 You can also use command `hlt-choose-default-face' to choose a different face.
Optional args START and END are the limits of the area to act on.
  They default to the region limits.
Optional arg MSG-P non-nil means display a progress message.

\(fn &optional START END FACE MSG-P)" t nil)

(autoload 'hlt-toggle-use-overlays-flag "highlight/highlight" "\
Toggle `hlt-use-overlays-flag'.
If the current value is non-nil, it is set to nil.
If the current value is nil, it is set to the last non-nil value.

\(fn)" t nil)

(defalias 'hlt-paste-props 'hlt-yank-props)

(autoload 'hlt-yank-props "highlight/highlight" "\
Yank (paste) copied text properties over the active region.
Do nothing if there is no nonempty active region.
By default, yank only the copied properties defined by
 `hlt-default-copy/yank-props'.
With a plain or non-negative prefix arg, yank all copied properties.
With a negative prefix arg, you are prompted for the copied properties
 to yank.  To finish entering properties, hit `RET RET' (i.e., twice).

NOTE: If the list of copied text properties is empty, then yanking
      REMOVES ALL PROPERTIES from the text in the region.  This
      provides an easy way to unpropertize text.

\(fn START END &optional ARG MSGP)" t nil)

(autoload 'hlt-mouse-copy-props "highlight/highlight" "\
Same as `hlt-copy-props', but copy at mouse pointer, not at point.

\(fn &optional EVENT ARG MSGP)" t nil)

(autoload 'hlt-copy-props "highlight/highlight" "\
Copy text properties at point for use by `hlt-yank-props'.
Properties are copied to `hlt-copied-props'.
By default, copy the properties defined by
 `hlt-default-copy/yank-props'.
With a plain or non-negative prefix arg, copy all properties.
With a negative prefix arg, you are prompted for the properties to
 copy.  To finish entering properties, hit `RET RET' (i.e., twice).

\(fn &optional POSITION ARG MSGP)" t nil)

;;;***

;;;### (autoloads (key-chord-define key-chord-define-global key-chord-mode)
;;;;;;  "key-chord/key-chord" "key-chord/key-chord.el" (20234 9897))
;;; Generated autoloads from key-chord/key-chord.el

(autoload 'key-chord-mode "key-chord/key-chord" "\
Toggle key chord mode.
With positive ARG enable the mode. With zero or negative arg disable the mode.
A key chord is two keys that are pressed simultaneously, or one key quickly
pressed twice.
See functions `key-chord-define-global' or `key-chord-define'
and variables `key-chord-two-keys-delay' and `key-chord-one-key-delay'.

\(fn ARG)" t nil)

(autoload 'key-chord-define-global "key-chord/key-chord" "\
Define a key-chord of two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define "key-chord/key-chord" "\
Define in KEYMAP, a key-chord of two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

\(fn KEYMAP KEYS COMMAND)" nil nil)

;;;***

;;;### (autoloads (rspec-buffer-is-spec-p rspec-mode) "rspec-mode/rspec-mode"
;;;;;;  "rspec-mode/rspec-mode.el" (20198 37579))
;;; Generated autoloads from rspec-mode/rspec-mode.el

(autoload 'rspec-mode "rspec-mode/rspec-mode" "\
Minor mode for rSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode/rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (when (rspec-buffer-is-spec-p) (rspec-mode)))))

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (local-set-key rspec-key-command-prefix rspec-mode-verifible-keymap))))

(eval-after-load 'rails '(add-hook 'rails-minor-mode-hook (lambda nil (local-set-key rspec-key-command-prefix rspec-mode-verifible-keymap))))

;;;***

;;;### (autoloads (rvm-open-gem rvm-use rvm-activate-corresponding-ruby
;;;;;;  rvm-use-default) "rvm/rvm" "rvm/rvm.el" (20198 37691))
;;; Generated autoloads from rvm/rvm.el

(autoload 'rvm-use-default "rvm/rvm" "\
use the rvm-default ruby as the current ruby version

\(fn)" t nil)

(autoload 'rvm-activate-corresponding-ruby "rvm/rvm" "\
activate the corresponding ruby version for the file in the current buffer.
This function searches for an .rvmrc file and activates the configured ruby.
If no .rvmrc file is found, the default ruby is used insted.

\(fn)" t nil)

(autoload 'rvm-use "rvm/rvm" "\
switch the current ruby version to any ruby, which is installed with rvm

\(fn NEW-RUBY NEW-GEMSET)" t nil)

(autoload 'rvm-open-gem "rvm/rvm" "\


\(fn GEMHOME)" t nil)

;;;***

;;;### (autoloads (tree-minor-mode) "tree-mode/tree-mode" "tree-mode/tree-mode.el"
;;;;;;  (20240 34646))
;;; Generated autoloads from tree-mode/tree-mode.el

(autoload 'tree-minor-mode "tree-mode/tree-mode" "\
More keybindings for tree-widget.

\\{tree-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (vline-global-mode vline-mode) "vline/vline" "vline/vline.el"
;;;;;;  (20234 3919))
;;; Generated autoloads from vline/vline.el

(autoload 'vline-mode "vline/vline" "\
Display vertical line mode.

\(fn &optional ARG)" t nil)

(defvar vline-global-mode nil "\
Non-nil if Vline-Global mode is enabled.
See the command `vline-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `vline-global-mode'.")

(custom-autoload 'vline-global-mode "vline/vline" nil)

(autoload 'vline-global-mode "vline/vline" "\
Toggle Vline mode in every possible buffer.
With prefix ARG, turn Vline-Global mode on if and only if
ARG is positive.
Vline mode is enabled in all buffers where
`(lambda nil (unless (minibufferp) (vline-mode 1)))' would do it.
See `vline-mode' for more information on Vline mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (windata-display-buffer windata-restore-named-winconf
;;;;;;  windata-name-winconf) "windata/windata" "windata/windata.el"
;;;;;;  (20240 34549))
;;; Generated autoloads from windata/windata.el

(autoload 'windata-name-winconf "windata/windata" "\
Save window configuration with NAME.
After save the window configuration you can restore it by NAME using
`windata-restore-named-winconf'.

\(fn NAME)" t nil)

(autoload 'windata-restore-named-winconf "windata/windata" "\
Restore saved window configuration.

\(fn NAME)" t nil)

(autoload 'windata-display-buffer "windata/windata" "\
Display buffer more precisely.
FRAME-P is non-nil and not window, the displayed buffer affect
the whole frame, that is to say, if DIR is right or left, the
displayed buffer will show on the right or left in the frame. If
it is nil, the buf will share space with current window.

DIR can be one of member of (right left top bottom).

SIZE is the displayed windowed size in width(if DIR is left or
right) or height(DIR is top or bottom). It can be a decimal which
will stand for percentage of window(frame) width(heigth)

DELETE-P is non-nil, the other window will be deleted before
display the BUF.

\(fn BUF FRAME-P DIR SIZE &optional DELETE-P)" nil nil)

;;;***

;;;### (autoloads (wrap-region-global-mode turn-off-wrap-region-mode
;;;;;;  turn-on-wrap-region-mode wrap-region-mode) "wrap-region/wrap-region"
;;;;;;  "wrap-region/wrap-region.el" (20234 3919))
;;; Generated autoloads from wrap-region/wrap-region.el

(autoload 'wrap-region-mode "wrap-region/wrap-region" "\
Wrap region with stuff.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-wrap-region-mode "wrap-region/wrap-region" "\
Turn on `wrap-region-mode'

\(fn)" t nil)

(autoload 'turn-off-wrap-region-mode "wrap-region/wrap-region" "\
Turn off `wrap-region-mode'

\(fn)" t nil)

(defvar wrap-region-global-mode nil "\
Non-nil if Wrap-Region-Global mode is enabled.
See the command `wrap-region-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `wrap-region-global-mode'.")

(custom-autoload 'wrap-region-global-mode "wrap-region/wrap-region" nil)

(autoload 'wrap-region-global-mode "wrap-region/wrap-region" "\
Toggle Wrap-Region mode in every possible buffer.
With prefix ARG, turn Wrap-Region-Global mode on if and only if
ARG is positive.
Wrap-Region mode is enabled in all buffers where
`turn-on-wrap-region-mode' would do it.
See `wrap-region-mode' for more information on Wrap-Region mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yari yari-anything) "yari/yari" "yari/yari.el"
;;;;;;  (20307 50045))
;;; Generated autoloads from yari/yari.el

(autoload 'yari-anything "yari/yari" "\


\(fn &optional REHASH)" t nil)

(autoload 'yari "yari/yari" "\
Look up Ruby documentation.

\(fn &optional RI-TOPIC REHASH)" t nil)

;;;***

;;;### (autoloads nil nil ("color-theme/color-theme-autoloads.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get.el" "rails-el/inflections.el"
;;;;;;  "rails-el/predictive-prog-mode.el" "rails-el/rails-bytecompile.el"
;;;;;;  "rails-el/rails-cmd-proxy.el" "rails-el/rails-compat.el"
;;;;;;  "rails-el/rails-controller-layout.el" "rails-el/rails-controller-minor-mode.el"
;;;;;;  "rails-el/rails-core.el" "rails-el/rails-features.el" "rails-el/rails-find.el"
;;;;;;  "rails-el/rails-fixture-minor-mode.el" "rails-el/rails-functional-test-minor-mode.el"
;;;;;;  "rails-el/rails-helper-minor-mode.el" "rails-el/rails-layout-minor-mode.el"
;;;;;;  "rails-el/rails-lib.el" "rails-el/rails-log.el" "rails-el/rails-mailer-minor-mode.el"
;;;;;;  "rails-el/rails-migration-minor-mode.el" "rails-el/rails-model-layout.el"
;;;;;;  "rails-el/rails-model-minor-mode.el" "rails-el/rails-navigation.el"
;;;;;;  "rails-el/rails-plugin-minor-mode.el" "rails-el/rails-project.el"
;;;;;;  "rails-el/rails-rake.el" "rails-el/rails-rspec-feature.el"
;;;;;;  "rails-el/rails-ruby.el" "rails-el/rails-scripts.el" "rails-el/rails-snippets-feature.el"
;;;;;;  "rails-el/rails-spec.el" "rails-el/rails-speedbar-feature.el"
;;;;;;  "rails-el/rails-test.el" "rails-el/rails-ui.el" "rails-el/rails-unit-test-minor-mode.el"
;;;;;;  "rails-el/rails-view-minor-mode.el" "rails-el/rails-ws.el"
;;;;;;  "rails-el/rails.el" "rhtml-mode/rhtml-erb.el" "rhtml-mode/rhtml-mode.el"
;;;;;;  "rhtml-mode/rhtml-navigation.el" "rhtml-mode/rhtml-ruby-hook.el"
;;;;;;  "rhtml-mode/rhtml-sgml-hacks.el" "rspec-mode/rspec-mode-expectations.el")
;;;;;;  (20307 50048 223356))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
