;;; Peepopen location service code
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'peepopen)
(textmate-mode)
(setq ns-pop-up-frames nil)

(scroll-bar-mode t) ;; may not work from plane terminal
(tool-bar-mode -1) ;; may not work from plane terminal
(set-fringe-style -1) ;; may not work from plane terminal
(tooltip-mode t) ;; may not work from plane terminal

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (end-of-buffer)
    (eval-print-last-sexp)))

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

;; C-;
(global-set-key (quote [67108923]) (quote forward-word)) 
;; C-: ie C-shift-;
(global-set-key (quote [67108922]) (quote backward-word))

(require 'grep)
(add-to-list 'grep-files-aliases (cons "rails" "*.rb *.erb *.js *.css *.rhtml"))

;; allow this prefix for org-mode
(define-key global-map "\C-ca" 'org-agenda)

;; esc alt s ;;; on macbook pro 2011
(global-set-key "\363" (quote multi-occur-in-matching-buffers))

;; Add elpa repositories
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(package-initialize)

(wrap-region-global-mode t)

;; flash screen for c-g do not ring bell
(set-variable (quote visible-bell) t nil)

;;;; WARNING some files cause emacs to prompt before start
;; load the set of saved files on startup
 (require 'save-visited-files)
 (turn-on-save-visited-files-mode)

;; (local-set-key [27 s-down] (quote org-move-subtree-down))
;; (add-hook 'org-mode-hook
;; 					(lambda ()
;; 						(setq abbrev-mode t)))


;; (add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(add-to-list 'load-path "~/github/yasnippet-capitaomorte-recent")
(require 'yasnippet)
(setq yas/snippet-dirs 
			'(
				"~/.emacs.d/my-snippets" ;; mv all the drnic tmbundle snippets here
																 ;; (rename rails to rhtml) plus mine in the my
																 ;; dir
				"~/.emacs.d/my-remoded-snippets/ruby-mode" ;; mv some of rhtml-mode
																									 ;; snippets (originally drnic
																									 ;; tmbundle rails-mode
																									 ;; snippets) belong in
																									 ;; ruby-mode so move
				))


;; ===============;; ===============;; ===============
;; GOAL
;; ~/.emacs.d/my-snippets

;; HOW

;; mkdir  ~/.emacs.d/my-snippets

;; [OK] cp -r ~/github/yasnippet-capitaomorte-recent/extras/imported/ruby-mode							~/.emacs.d/my-snippets/ruby-mode

;; [OK] cp -r ~/.emacs.d/snippets-recent/rinari-mode/my																		~/.emacs.d/my-snippets/rhtml-mode/my/ 
;; #cp -r ~/github/yasnippet-capitaomorte-recent/extras/imported/rails-mode/*							~/.emacs.d/my-snippets/rhtml-mode/
;; cp -r ~/github/yasnippet-capitaomorte-recent/extras/imported/rails-mode/Commands				~/.emacs.d/my-snippets/rhtml-mode/Commands
;; cp -r ~/github/yasnippet-capitaomorte-recent/extras/imported/rails-mode/Snippets				~/.emacs.d/my-snippets/rhtml-mode/Snippets
;; cp -r ~/github/yasnippet-capitaomorte-recent/extras/imported/rails-mode/Macros					~/.emacs.d/my-snippets/rhtml-mode/Macros

;; # now move snippets into the /Users/cmmagid/.emacs.d/my-remoded-snippets
;; mkdir -p /Users/cmmagid/.emacs.d/my-remoded-snippets/ruby-mode/Snippets

;; # add to load path
;; ~/.emacs.d/my-remoded-snippets

;; mv ~/.emacs.d/my-snippets/rhtml-mode/Snippets/val* /Users/cmmagid/.emacs.d/my-remoded-snippets/ruby-mode/Snippets

;; mv ~/.emacs.d/my-snippets/rhtml-mode/Snippets/before* /Users/cmmagid/.emacs.d/my-remoded-snippets/ruby-mode/Snippets/
;; mv ~/.emacs.d/my-snippets/rhtml-mode/Snippets/after* /Users/cmmagid/.emacs.d/my-remoded-snippets/ruby-mode/Snippets/


;; /
;; /
;; # move the non rhtml from my new rhtml-mode into my new ruby-mode

;; mv ~/.emacs.d/my-snippets/rhtml-mode/


;; # make sure all the group and parents are available
;; ===============;; ===============;; ===============

;(setq yas/use-menu (quote real-modes))
(setq yas/use-menu (quote abbreviate))
(setq yas/prompt-functions (quote (yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt)))

(yas/global-mode 1)
;(setq yas/extra-modes '( "rails-mode" ))

;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
;(col-highlight-toggle-when-idle t)
(define-key global-map (kbd "C-+") 'col-highlight-flash)

(require 'iy-go-to-char)
(global-set-key (kbd "C-c f") 'iy-go-to-char)
(global-set-key (kbd "C-c F") 'iy-go-to-char-backward)
(global-set-key (kbd "C-c ;") 'iy-go-to-char-continue)
(global-set-key (kbd "C-c ,") 'iy-go-to-char-continue-backward)

(add-to-list 'auto-mode-alist '("\.css$" . rainbow-mode))

(add-to-list 'load-path "~/.emacs.d/rc-site-lisp")
;(autoload 'dirtree "dirtree" "Add directory to tree view")
(require 'dirtree)
