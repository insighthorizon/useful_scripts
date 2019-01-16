(menu-bar-mode -1)
(tool-bar-mode -1)
(load-file "~/.emacs.d/themes/heroku-theme.el")
(load-theme 'heroku t)
(global-linum-mode 1)

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-color-blue ((t (:background "deep sky blue" :foreground "cyan"))))
 '(term-color-red ((t (:background "salmon" :foreground "light coral")))))

;;org mode latex preview size
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

;; enable latex preview pan
(load "preview-latex.el" nil t t)
