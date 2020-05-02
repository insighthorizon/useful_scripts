(menu-bar-mode -1)
(tool-bar-mode -1)
;;(global-linum-mode 1)
;;(set-default 'truncate-lines t)
;; C indentation
(setq c-default-style "linux" c-basic-offset 4)

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")) )
(package-initialize)

(require 'ox-latex)
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


;;render latex fragment preview with imagemagick (you have to install it, otherwise cannot render latex diagrams)
(setq org-latex-create-formula-image-program 'imagemagick)
;;org mode latex preview size - must have dvipng or equivalent installed (apt-get install dvipng) and org updated
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.42))
;; let me use underscore
(setq org-use-sub-superscripts '{})

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
 '(custom-enabled-themes (quote (eziam-light)))
 '(custom-safe-themes
   (quote
    ("e11880d349e5b3f3d47e5bd6f7d9ff773ab6301e124ec7dbbbfbba5fb8482390" default)))
 '(org-hide-emphasis-markers t)
 '(package-selected-packages
   (quote
    (latex-math-preview org haskell-mode racket-mode org-bullets eziam-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block ((t (:inherit fixed-pitch)))))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)))


