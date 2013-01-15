; (+ 442 220) 331
									(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
									(require 'yasnippet)
									;;(setq yas/snippet-dirs '("~/.emacs.d/snippets" "~/.emacs.d/plugins/yasnippet/extras/imported"))
										(setq yas/snippet-dirs '("~/.emacs.d/snippets" "~/.emacs.d/snippets-assisted" )) ;; I massaged the imports
									(yas/global-mode 1)
									;; inf-ruby overides C-c & C-s even though when I do a 'where is' emacs returns C-c & C-s
									(global-set-key [C-tab] (quote yas/insert-snippet))
									(global-set-key [backtab] (quote yas/insert-snippet))


												;;; Peepopen location service code
												(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
												(require 'textmate)
												(add-to-list 'load-path "~/.emacs.d/vendor/")
												;(require 'peepopen) ; Instead bind cmd-t to textmate-goto-file
												(global-set-key [8388724] (quote textmate-goto-file)) ; cmd-t
												(global-set-key [142614560] (quote textmate-clear-cache)) ; cmd-alt-t
												(textmate-mode)
												(setq ns-pop-up-frames nil)
									;
									;			(scroll-bar-mode t) ;; may not work from plane terminal
												(tool-bar-mode -1) ;; may not work from plane terminal
									;			(set-fringe-style -1) ;; may not work from plane terminal
									;			(tooltip-mode t) ;; may not work from plane terminal
									;
									;
									;
									;			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
												(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
												(unless (require 'el-get nil t)
													(with-current-buffer
															(url-retrieve-synchronously "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
														(goto-char (point-max)) (eval-print-last-sexp)))
												(el-get 'sync)

												(require 'color-theme)
												(color-theme-initialize)
												(load-file "~/.emacs.d/el-get/color-theme-railscasts/color-theme-railscasts.el")
												(color-theme-railscasts)

												(push "/usr/local/bin" exec-path)
												(fset 'yes-or-no-p 'y-or-n-p)
												(setq-default tab-width 2)
												(blink-cursor-mode t)
												(show-paren-mode t)
												(column-number-mode t)

												;; Simple code fold toggling, makes indenting more meaningful
												; See: http://emacs.wordpress.com/2007/01/16/quick-and-dirty-code-folding/
												(defun jao-selective-display ()
													"Activate selective display based on the column at point"
													(interactive)
													(set-selective-display
													 (if selective-display
															 nil
														 (+ 1 (current-column)))))
												; WARNING (global-set-key "." (quote jao-selective-display))
												; no good because prefix in some modes
												; [C-c C-space]
												(global-set-key (quote [3 67108896]) (quote jao-selective-display))

												;; insert date
												(defun insert-date () "Insert according to locale's date and time format." (interactive)
													(insert (format-time-string "%c" (current-time))))

									;			;; C-;
												(global-set-key (quote [67108923]) (quote forward-word))
									;			;; C-: ie C-shift-;
												(global-set-key (quote [67108922]) (quote backward-word))
									;
									;			(require 'grep)
									;			(add-to-list 'grep-files-aliases (cons "rails" "*.rb *.erb *.js *.css *.rhtml *.haml"))
									;
									;			;; http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
									;			;; allow this prefix for org-mode
									;			(define-key global-map "\C-ca" 'org-agenda)
									;			(define-key global-map "\C-cl" 'org-store-link)
									;			(setq org-log-done t)
									;			;; (setq org-agenda-files (list "~/GTD/work.org"
									;			;;                              "~/GTD/school.org"
									;			;;                              "~/GTD/home.org"))
									;			(setq org-agenda-files (list
									;															"~/GTD/newgtd.org"
									;															;; "~/GTD/newgtd.org_archive"
									;															"~/GTD/someday.org"
									;															"~/GTD/journal.org"
									;															"~/GTD/birthday.org"
									;															"~/GTD/shopping.org"
									;															))
									;
									;			;; TEMPLATE
									;			(setq org-agenda-custom-commands
									;						'(("H" "Office and Home Lists"
									;							 ((agenda)
									;
									;								(tags-todo "OFFICE"   )
									;								(tags-todo "HOME"     )
									;								(tags-todo "COMPUTER" )
									;								(tags-todo "PROJECT"  )
									;								(tags-todo "READING"  )
									;								(tags-todo "ERRANDS"  )
									;								(tags-todo "MOBILE"   )
									;								(tags-todo "DVD"      )
									;								(tags-todo "LUNCHTIME")
									;								(tags-todo "OUTINGS"  )
									;								(tags-todo "SHOPPING" )))
									;
									;							("D" "Daily Action List"
									;							 (
									;								(agenda "" ((org-agenda-ndays 1)
									;														(org-agenda-sorting-strategy
									;														 (quote ((agenda time-up priority-down tag-up) )))
									;														(org-deadline-warning-days 0)
									;														))))
									;							("o" "Agenda and Office-related tasks"
									;							 ((agenda "")
									;								(tags-todo "work")
									;								(tags "office")))))
									;
									;			(org-remember-insinuate)
									;			(setq org-directory "~/GTD/")
									;			(setq org-default-notes-file (concat org-directory "/notes.org"))
									;			(define-key global-map "\C-cr" 'org-remember)
									;
									;			(setq org-remember-templates
									;						'(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/GTD/newgtd.org" "Tasks")
									;							("Journal" ?j "* %U %?\n\n  %i\n  %a" "~/GTD/journal.org")
									;							("Idea" ?i "* %^{Title}\n  %i\n  %a" "~/GTD/journal.org" "New Ideas")))
									;
									;			;; Setup mobileorg options.  Sync with gtd operations
									;			(setq org-mobile-directory "~/Dropbox/MobileOrg")
									;			(setq org-mobile-inbox-for-pull "~/GTD/from-mobile.org")
									;
									;			;; Keep #+SEQ_TODO: in org files and org-todo-keywords variable in sync
									;			(setq org-todo-keywords (quote ((sequence "TODO" "NEXT" "STARTED" "WAITING" "APPT" "DONE" "CANCELLED" "DEFERRED" "REFERENCE"))))
									;
									;			;; Keep #+TAGS: in org files and 'org-tag-alist' and 'org-agenda-custom-commands' variable in sync
									;			(setq org-tag-alist '(("OFFICE" . ?o)
									;														("HOME" . ?h)
									;														("COMPUTER" . ?c)
									;														("PROJECT" . ?p)
									;														("READING" . ?r)
									;														("ERRANDS" . ?e)
									;														("MOBILE" . ?m)
									;														("DVD" . ?d)
									;														("LUNCHTIME" . ?l)
									;														("OUTINGS" . ?g)
									;														("SHOPPING" . ?s)))
									;
									;			;; esc alt s ;;; on macbook pro 2011
									;			(global-set-key "\363" (quote multi-occur-in-matching-buffers))
									;
									;			;; Add elpa repositories
									;			(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
									;			(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
									;			(package-initialize)
									;
									;			;; flash screen for c-g do not ring bell
												(set-variable (quote visible-bell) t nil)
									;
									;			;;;; WARNING some files cause emacs to prompt before start
									;			;; load the set of saved files on startup
									;			(require 'save-visited-files)
									;			(turn-on-save-visited-files-mode)
									;
									;			;; (local-set-key [27 s-down] (quote org-move-subtree-down))
									;			;; (add-hook 'org-mode-hook
									;			;;          (lambda ()
									;			;;            (setq abbrev-mode t)))
									;
									;			;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
									;			(add-to-list 'auto-mode-alist '("\.rake" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.rake$$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.gemspec" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.gemspec$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.gemspec$$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.ru" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.ru$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("\.ru$$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Rakefile$$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Gemfile$$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Capfile$$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
									;			(add-to-list 'auto-mode-alist '("Vagrantfile$$" . ruby-mode))
									;
									;			(add-to-list 'auto-mode-alist '("\.yml$" . yaml-mode))
									;			(add-to-list 'auto-mode-alist '("\.yml$$" . yaml-mode))
									;
									;			(add-to-list 'auto-mode-alist '("\.yaml$" . yaml-mode))
									;			(add-to-list 'auto-mode-alist '("\.yaml$$" . yaml-mode))
									;
									;
									;
									;			(add-to-list 'auto-mode-alist '("\.Guardfile$$" . ruby-mode))
									;
									;
									;
									;			;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
									;			;(col-highlight-toggle-when-idle t)
									;			;(define-key global-map (kbd "C-+") 'col-highlight-flash)
									;			(define-key global-map (kbd "C-+") 'flash-crosshairs)
									;
									;			;; (require 'iy-go-to-char)
									;			;; (global-set-key (kbd "C-c f") 'iy-go-to-char)
									;			;; (global-set-key (kbd "C-c F") 'iy-go-to-char-backward)
									;			;; (global-set-key (kbd "C-c ;") 'iy-go-to-char-continue)
									;			;; (global-set-key (kbd "C-c ,") 'iy-go-to-char-continue-backward)
									;
									;			(add-to-list 'auto-mode-alist '("\.css" . rainbow-mode))
									;			(add-to-list 'auto-mode-alist '("\.css$" . rainbow-mode))
									;			(add-to-list 'auto-mode-alist '("\.css$$" . rainbow-mode))
									;
									;			(add-to-list 'auto-mode-alist '("\.scss" . rainbow-mode))
									;			(add-to-list 'auto-mode-alist '("\.scss$" . rainbow-mode))
									;			(add-to-list 'auto-mode-alist '("\.scss$$" . rainbow-mode))
									;
									;			(add-to-list 'auto-mode-alist '("\.css" . css-mode))
									;			(add-to-list 'auto-mode-alist '("\.css$" . css-mode))
									;			(add-to-list 'auto-mode-alist '("\.css$$" . css-mode))
									;
									;			(add-to-list 'auto-mode-alist '("\.scss" . css-mode))
									;			(add-to-list 'auto-mode-alist '("\.scss$" . css-mode))
									;			(add-to-list 'auto-mode-alist '("\.scss$$" . css-mode))
									;
												(add-to-list 'load-path "~/.emacs.d/rc-site-lisp")
									;			;(autoload 'dirtree "dirtree" "Add directory to tree view")
									;			; dirtree depends upon http://www.emacswiki.org/emacs/windata.el
												(require 'dirtree)
									;			; redefine dired key binding to be dirtree
												(global-set-key "d" (quote dirtree))
									;
									;			;; https://github.com/magnars/mark-multiple.el
									;			(require 'inline-string-rectangle)
									;			(global-set-key (kbd "C-x r t") 'inline-string-rectangle)
									;
												(require 'mark-more-like-this)
												(global-set-key (kbd "C-<") 'mark-previous-like-this)
												(global-set-key (kbd "C->") 'mark-next-like-this)
												(global-set-key (kbd "C-M-m") 'mark-more-like-this) ; like the other two, but takes an argument (negative is previous)
									;
									;			(require 'rename-sgml-tag)
									;			;; (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)  -- temp issue here fix up asap
									;
									;			;; (require 'js2-rename-var)
									;			;; (define-key js2-mode-map (kbd "C-c C-r") 'js2-rename-var)
									;
									;
									;			;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/rails-minor-mode"))
									;			;; (require 'rails)
									;
									;
									;			;; WARNING comment this out when running headless or multiple emacs
									;			;; allow opening of files in running emacs



									;
									;
									;			;;
									;			;; Never understood why Emacs doesn't have this function. https://sites.google.com/site/steveyegge2/my-dot-emacs-file
									;			;;
												(defun rename-file-and-buffer (new-name)
												 "Renames both current buffer and file it's visiting to NEW-NAME." (interactive "sNew name: ")
												 (let ((name (buffer-name))
													(filename (buffer-file-name)))
												 (if (not filename)
													(message "Buffer '%s' is not visiting a file!" name)
												 (if (get-buffer new-name)
													 (message "A buffer named '%s' already exists!" new-name)
													(progn   (rename-file name new-name 1)   (rename-buffer new-name)    (set-visited-file-name new-name)    (set-buffer-modified-p nil)))))) ;;
									;			;;
									;			;; Never understood why Emacs doesn't have this function, either.  https://sites.google.com/site/steveyegge2/my-dot-emacs-file
									;			;;
									;			(defun move-buffer-file (dir)
									;			 "Moves both current buffer and file it's visiting to DIR." (interactive "DNew directory: ")
									;			 (let* ((name (buffer-name))
									;				 (filename (buffer-file-name))
									;				 (dir
									;				 (if (string-match dir "\\(?:/\\|\\\\)$")
									;				 (substring dir 0 -1) dir))
									;				 (newname (concat dir "/" name)))
									;
									;			 (if (not filename)
									;				(message "Buffer '%s' is not visiting a file!" name)
									;			 (progn   (copy-file filename newname 1)  (delete-file filename)  (set-visited-file-name newname)   (set-buffer-modified-p nil)   t))))
									;
									;
									;			(add-hook 'html-mode-hook
									;						'(lambda ()
									;							 (add-hook 'before-save-hook
									;												 (lambda ()
									;													 (untabify (point-min) (point-max))))))
									;

;;; Note trailing white space
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; Note where column 80 is
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)


									;
									;			;; (defun my-coding-hook ()
									;			;;   (make-local-variable 'column-number-mode)
									;			;;   (column-number-mode t)
									;			;;   ;; (if window-system (hl-line-mode t))
									;			;;   (idle-highlight))
									;
									;			(require 'idle-highlight-mode)
									;
									;			(defun my-coding-hook ()
									;				(make-local-variable 'column-number-mode)
									;				(column-number-mode t)
									;				(if window-system (hl-line-mode t))
									;				(idle-highlight-mode t))
									;
									;			(defun my-rhtml-coding-hook ()
									;				(make-local-variable 'column-number-mode)
									;				(column-number-mode t)
									;				(if window-system (hl-line-mode t))
									;				(idle-highlight-mode t)
									;				(sgml-electric-tag-pair-mode))
									;
									;
									;			(add-hook 'emacs-lisp-mode-hook 'my-coding-hook)
									;			(add-hook 'ruby-mode-hook 'my-coding-hook)
									;			(add-hook 'js2-mode-hook 'my-coding-hook)
									;			;; (add-hook 'rinari-minor-mode-hook 'my-coding-hook)
;here									;			(add-hook 'rhtml-mode-hook 'my-rhtml-coding-hook)
									;
									;			;; just a one off. Will not work in general case yet.
									;			(fset 'csv-to-table
									;				 [escape ?< escape ?x ?r ?e ?p ?l return ?s return ?, return ?| return escape ?< ?| ?\C-a ?\C-n ?| ?\C-a ?\C-n ?| escape ?x ?o ?r ?g ?  ?m ?o ?d return tab escape ?<])
									;
									;			(hl-line-mode nil)
									;
									;			(global-set-key "r" (quote yari))
									;
												(require 'yaml-mode)
									;
									;			;;; http://www.emacswiki.org/emacs/ToggleWindowSplit
												(defun toggle-window-split ()
													(interactive)
													(if (= (count-windows) 2)
															(let* ((this-win-buffer (window-buffer))
															 (next-win-buffer (window-buffer (next-window)))
															 (this-win-edges (window-edges (selected-window)))
															 (next-win-edges (window-edges (next-window)))
															 (this-win-2nd (not (and (<= (car this-win-edges)
																	 (car next-win-edges))
																		 (<= (cadr this-win-edges)
																	 (cadr next-win-edges)))))
															 (splitter
																(if (= (car this-win-edges)
																 (car (window-edges (next-window))))
															'split-window-horizontally
														'split-window-vertically)))
													(delete-other-windows)
													(let ((first-win (selected-window)))
														(funcall splitter)
														(if this-win-2nd (other-window 1))
														(set-window-buffer (selected-window) this-win-buffer)
														(set-window-buffer (next-window) next-win-buffer)
														(select-window first-win)
														(if this-win-2nd (other-window 1))))))

												(define-key ctl-x-4-map "t" 'toggle-window-split)
									;
									;
									;
									;
									;
									;			;; Warning (emacs): Build command "rake doc:install_info" in package "rinari" will be shell-interpolated. To bypass shell interpolation, the recipe for "rinari" should specify build commands as lists of strings instead.
									;
									;			(custom-set-variables
									;			 ;; custom-set-variables was added by Custom.
									;			 ;; If you edit it by hand, you could mess it up, so be careful.
									;			 ;; Your init file should contain only one such instance.
									;			 ;; If there is more than one, they won't work right.
									;			 '(column-number-mode t)
									;			 '(show-paren-mode t)
									;			 '(tool-bar-mode nil))
									;			(custom-set-faces
									;			 ;; custom-set-faces was added by Custom.
									;			 ;; If you edit it by hand, you could mess it up, so be careful.
									;			 ;; Your init file should contain only one such instance.
									;			 ;; If there is more than one, they won't work right.
									;			 '(hl-line ((t (:background "Black" :inverse-video nil)))))
									;
									;			 ;; '(hl-line ((t (:background "Black" :inverse-video nil :box (:line-width 1 :color "grey75" :style released-button))))))
									;
												(defun shellup ()
													(interactive)
													(switch-to-buffer "o294ry9hfab;calwgur0apo23r1ewdsa0uyv98f7ogy13bn2lwedscn.xvbdsagiweh")
;;;;;;;;;;;;;;;;;;;;;;;;													(cd "~/rails3/designer/feewise/")
													(shell nil)
									;				(shell "*run*")
									;				(shell "*console*")
									;				(switch-to-buffer "o294ry9hfab;calwgur0apo23r1ewdsa0uyv98f7ogy13bn2lwedscn.xvbdsagiweh")
									;				(cd "~/rails3/bootstrap/newestentries/")
									;				(shell "*newest*")
									;				(switch-to-buffer "o294ry9hfab;calwgur0apo23r1ewdsa0uyv98f7ogy13bn2lwedscn.xvbdsagiweh")
									;				(cd "~/rails_projects/railscasts-episodes/")
									;				(shell "*episodes*")
									;				(switch-to-buffer "o294ry9hfab;calwgur0apo23r1ewdsa0uyv98f7ogy13bn2lwedscn.xvbdsagiweh")
									;				(cd "~/rails3/designer/feewise.volumesquared.com.4/")
									;				(shell "4")
													(switch-to-buffer "o294ry9hfab;calwgur0apo23r1ewdsa0uyv98f7ogy13bn2lwedscn.xvbdsagiweh")
													(kill-buffer "o294ry9hfab;calwgur0apo23r1ewdsa0uyv98f7ogy13bn2lwedscn.xvbdsagiweh"))
												(shellup)
									;
									;
												(require 'markerpen)
									;
												(wrap-region-global-mode t) ; It does not work in rails mode

									;http://ergoemacs.org/emacs_manual/emacs/Saving-Emacs-Sessions.html
									(desktop-save-mode 1)
									(setq desktop-restore-eager 10)

									;http://www.emacswiki.org/DeskTop
									(setq history-length 1250)

									(setq rinari-tags-file-name "gems.tags")
									(put 'narrow-to-region 'disabled nil)

									;(define-key global-map (kbd "C-+") 'flash-crosshairs)
									(define-key global-map (kbd "C-+") 'col-highlight-flash)
									;; (set-face-attribute 'default nil :font "OpenDyslexic")



									;; Two Hook examples
									;; (add-hook 'lisp-interaction-mode-hook 'auto-fill-mode)
									;; (add-hook 'org-mode-hook
									;; 					(lambda () (setq abbrev-mode t))
									;; )

									(add-hook 'rhtml-mode-hook 'sgml-electric-tag-pair-mode)
									(add-hook 'html-mode-hook 'sgml-electric-tag-pair-mode)
									(add-hook 'sgml-mode-hook 'sgml-electric-tag-pair-mode)
;there


(defun ansi-remove-color ()
	(interactive)
	(goto-char (point-min))

)

;Get error: directory is unsafe, when I use server-start on gnu emacs 24 mac os x lion
;; (defun server-ensure-safe-dir (dir) t)
;; <MARK>
(server-start) ;;; Use C-x # to close an emacsclient buffer.

;(emacs-version)"GNU Emacs 24.3.50.1 (i386-apple-darwin11.4.2, NS apple-appkit-1138.51)  of 2012-11-12 on dhcp-4-187.hq.rbm.local"

;; Try doing:

;;  C:\> SET EMACS_SERVER_FILE=%HOME%\.emacs.d\server\server
;;  C:\> emacsclient MY_FILE

;; or

;;  C:\> emacsclient --server-file=%HOME%\.emacs.d\server\server MY_FILE

;; (with %HOME% pointing to Emacs' home dir, of course).

;; /usr/bin/emacsclient
;; /usr/local/bin/emacsclient  # =>  use this one
;; /usr/local/Cellar/emacs/HEAD/bin/emacsclient


;(server-start)

;; Debugger entered--Lisp error: (error "The directory `/var/folders/b3/9k90h2ln2ns__vznkc0642vc3m01mw/T//emacs121636508' is unsafe")
;; Debugger entered--Lisp error: (error "The directory `/var/folders/b3/9k90h2ln2ns__vznkc0642vc3m01mw/T//emacs121636508' is unsafe")
;; Debugger entered--Lisp error: (error "The directory `/var/folders/b3/9k90h2ln2ns__vznkc0642vc3m01mw/T//emacs121636508' is unsafe")


(global-set-key [s-left] (quote backward-sexp))
(global-set-key [s-right] (quote forward-sexp))

(fset 'cmm-add-todo-in-org-mode
   [?\C-a ?* ?  ?t ?o ?d ?o ?\C-\[ ?b ?\C-\[ ?u ?: ?  ?\C-\[ ?x ?i ?n ?s ?e ?r ?  ?d ?a ?\C-m ?\C-\M-m M-right ?S ?u ?m ?m ?a ?r ?y ?: ?\C-\M-m ?T ?o ?d ?a ?y ?: ?\C-\M-m ?L ?o ?n ?g ?  ?T ?e ?r ?m ?: ?\C-\M-m ?S ?c ?r ?a ?t ?c ?h ?\C-c ?\C-u])


;(ansi-color-apply-on-region (point-min) (point-max))

(defun ansi-color-file ()
  "Show the ansi color escape code in log file correctly"
  (interactive)
  (let (var1)
    (setq var1 'some)
    (ansi-color-apply-on-region (point-min) (point-max))
		))


;; Beginning of the el4r block:
;; RCtool generated this block automatically. DO NOT MODIFY this block!
(add-to-list 'load-path "/Users/cmagid/.rvm/rubies/ruby-1.9.3-p327/share/emacs/site-lisp")
(require 'el4r)
;(el4r-boot)
;; End of the el4r block.
;; User-setting area is below this line.
