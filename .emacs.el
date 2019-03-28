(menu-bar-mode -1)
(tool-bar-mode -1)
(load-file "~/.emacs.d/themes/heroku-theme.el")
(load-theme 'heroku t)
;;(global-linum-mode 1)
;;(set-default 'truncate-lines t)
;; C indentation
(setq c-default-style "linux" c-basic-offset 4)

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
;;render latex fragment preview with imagemagick (you have to install it, otherwise cannot render latex diagrams)
(setq org-latex-create-formula-image-program 'imagemagick)
;;org mode latex preview size - must have dvipng or equivalent installed (apt-get install dvipng) and org updated
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.35))

;; appearance of org mode bullets (no ******)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; paragraphs (long line mode)
(add-hook 'org-mode-hook 'visual-line-mode)
;; proportional font
;;(add-hook 'org-mode-hook 'variable-pitch-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-hide-emphasis-markers t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:foreground "pale turquoise" :weight bold :height 1.6))))
 '(org-level-1 ((t (:foreground "#dfaf8f" :height 1.25))))
 '(org-level-2 ((t (:foreground "#aeaeae" :height 1.2))))
 '(org-level-3 ((t (:foreground "#94bff3" :height 1.15))))
 '(org-level-4 ((t (:foreground "#e0cf9f" :height 1.1))))
 '(org-level-5 ((t (:foreground "#93e0e3" :height 1.05))))
 '(term-color-blue ((t (:background "deep sky blue" :foreground "cyan"))))
 '(term-color-red ((t (:background "salmon" :foreground "light coral"))))
 ;; fixed font pitch for source blocks
 '(org-block                 ((t (:inherit fixed-pitch))))
 )

