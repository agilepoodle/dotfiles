;; Tell emacs where is your personal elisp lib dir
;; this is default dir for extra packages
(add-to-list 'load-path "~/.emacs.d/")
(load-file "~/.emacs.d/highlight-indentation.el")

(require 'iflipb)
;;(require 'highlight-indentation.el)

(global-set-key (kbd "<C-tab>") 'iflipb-next-buffer)
  (global-set-key
   (if (featurep 'xemacs) (kbd "<C-iso-left-tab>") (kbd "<C-S-iso-lefttab>"))
   'iflipb-previous-buffer)

(setq inhibit-splash-screen t)

;; set the fonts and colors I like
(global-font-lock-mode t)

;; cperl-mode is preferred to perl-mode                                        
;; "Brevity is the soul of wit" <foo at acm.org>                               
(defalias 'perl-mode 'cperl-mode)

;; Show matching parens
(show-paren-mode 1)

;; Rid of toolbar
(tool-bar-mode -1)

(set-default-font "Monospace-8")

(global-linum-mode 1)

;; Refresh all files from the disk
(global-auto-revert-mode t)

;; SASS mode
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/folder-where-you-put-scss-mode-el"))
;;(setq exec-path (cons (expand-file-name "~/.gem/ruby/1.8/bin") exec-path))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))
(setq scss-compile-at-save nil)

;; highlight-indentation-mode customization
;;(set-face-background 'highlight-indentation-face "#A0A0A0")
;;(set-face-background 'highlight-indentation-current-column-face "#000000")
