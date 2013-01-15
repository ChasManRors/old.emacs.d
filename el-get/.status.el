((Enhanced-Ruby-Mode status "removed" recipe nil)
 (ac-anything2 status "removed" recipe nil)
 (anything status "removed" recipe nil)
 (anything-rcodetools status "removed" recipe nil)
 (auto-complete status "removed" recipe nil)
 (auto-complete-yasnippet status "removed" recipe nil)
 (coffee-mode status "installed" recipe
							(:name coffee-mode :website "http://ozmm.org/posts/coffee_mode.html" :description "Emacs Major Mode for CoffeeScript" :type github :pkgname "defunkt/coffee-mode" :features coffee-mode :post-init
										 (progn
											 (add-to-list 'auto-mode-alist
																		'("\\.coffee$" . coffee-mode))
											 (add-to-list 'auto-mode-alist
																		'("Cakefile" . coffee-mode))
											 (setq coffee-js-mode 'javascript-mode))))
 (col-highlight status "installed" recipe
								(:name col-highlight :type emacswiki :description "Highlight the current column." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/col-highlight.el"))
 (color-theme status "installed" recipe
							(:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
										 ("xzf")
										 :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
										 (progn
											 (color-theme-initialize)
											 (setq color-theme-is-global t))))
 (color-theme-railscasts status "installed" recipe
												 (:name color-theme-railscasts :description "Railscasts color theme for Emacs." :type github :pkgname "olegshaldybin/color-theme-railscasts" :depends color-theme :prepare
																(autoload 'color-theme-railscasts "color-theme-railscasts" "color-theme: railscasts" t)))
 (crosshairs status "installed" recipe
						 (:name crosshairs :type emacswiki :description "Highlight the current line and column." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/crosshairs.el"))
 (el-get status "installed" recipe
				 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "3.stable" :pkgname "dimitri/el-get" :features el-get :load "el-get.el"))
 (fuzzy status "installed" recipe
				(:name fuzzy :website "https://github.com/m2ym/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "m2ym/fuzzy-el"))
 (haml-mode status "installed" recipe
						(:name haml-mode :description "Major mode for editing Haml files" :type github :pkgname "nex3/haml-mode"))
 (hl-line+ status "installed" recipe
					 (:name hl-line+ :type emacswiki :description "Extensions to hl-line.el." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/hl-line+.el"))
 (init-yasnippet status "removed" recipe nil)
 (json status "installed" recipe
			 (:name json :description "JavaScript Object Notation parser / generator" :type http :url "http://edward.oconnor.cx/elisp/json.el" :features json))
 (magit status "installed" recipe
				(:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :info "." :autoloads
							 ("50magit")
							 :build
							 (("make" "all"))
							 :build/darwin
							 `(,(concat "make EMACS=" el-get-emacs " all"))))
 (markerpen status "installed" recipe
						(:name markerpen :type emacswiki :description "Colour and highlight arbitrary sections of buffers" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/markerpen.el"))
 (org-json status "installed" recipe
					 (:name org-json :type emacswiki :description "conversion between org and json" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/org-json.el"))
 (package status "installed" recipe
					(:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin 24 :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
								 (progn
									 (setq package-user-dir
												 (expand-file-name
													(convert-standard-filename
													 (concat
														(file-name-as-directory default-directory)
														"elpa")))
												 package-directory-list
												 (list
													(file-name-as-directory package-user-dir)
													"/usr/share/emacs/site-lisp/elpa/"))
									 (make-directory package-user-dir t)
									 (unless
											 (boundp 'package-subdirectory-regexp)
										 (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
									 (setq package-archives
												 '(("ELPA" . "http://tromey.com/elpa/")
													 ("gnu" . "http://elpa.gnu.org/packages/")
													 ("marmalade" . "http://marmalade-repo.org/packages/")
													 ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (popup status "installed" recipe
				(:name popup :website "https://github.com/m2ym/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "m2ym/popup-el"))
 (rainbow-mode status "installed" recipe
							 (:name rainbow-mode :description "Colorize color names in buffers" :type elpa))
 (rhtml-mode status "installed" recipe
						 (:name rhtml-mode :description "Major mode for editing RHTML files" :type github :pkgname "eschulte/rhtml" :prepare
										(progn
											(autoload 'rhtml-mode "rhtml-mode" nil t)
											(add-to-list 'auto-mode-alist
																	 '("\\.html.erb$" . rhtml-mode)))))
 (rinari status "installed" recipe
				 (:name rinari :description "Rinari Is Not A Rails IDE" :type github :pkgname "eschulte/rinari" :load-path
								("." "util" "util/jump")
								:compile
								("\\.el$" "util")
								:build
								("rake doc:install_info")
								:info "doc" :features rinari))
 (ruby-electric status "installed" recipe
								(:name ruby-electric :description "Electric commands editing for ruby files" :type elpa :post-init
											 (add-hook 'ruby-mode-hook 'ruby-electric-mode)))
 (sass-mode status "installed" recipe
						(:name sass-mode :description "Major mode for editing Sass files" :type github :pkgname "nex3/sass-mode" :depends haml-mode :post-init
									 (add-to-list 'auto-mode-alist
																'("\\.scss$" . sass-mode))))
 (stripe-buffer status "installed" recipe
								(:name stripe-buffer :type emacswiki :description "Make stripe color with buffer." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/stripe-buffer.el"))
 (stripes status "installed" recipe
					(:name stripes :type emacswiki :description "alternate the background color of lines" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/stripes.el"))
 (tree-mode status "installed" recipe
						(:name tree-mode :type emacswiki :description "A mode to manage tree widgets" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/tree-mode.el"))
 (vline status "installed" recipe
				(:name vline :description "show vertical line (column highlighting) mode." :type emacswiki :features vline))
 (wrap-region status "installed" recipe
							(:name wrap-region :description "Wrap text with punctation or tag" :type elpa :prepare
										 (progn
											 (autoload 'wrap-region-mode "wrap-region" nil t)
											 (autoload 'turn-on-wrap-region-mode "wrap-region" nil t)
											 (autoload 'turn-off-wrap-region-mode "wrap-region" nil t)
											 (autoload 'wrap-region-global-mode "wrap-region" nil t))))
 (yaml-mode status "installed" recipe
						(:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode" :prepare
									 (progn
										 (autoload 'yaml-mode "yaml-mode" nil t)
										 (add-to-list 'auto-mode-alist
																	'("\\.ya?ml\\'" . yaml-mode)))))
 (yasnippet status "removed" recipe nil)
 (yasnippet-config status "removed" recipe nil))
