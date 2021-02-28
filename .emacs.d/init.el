;; ==========
;; package.el
;; ==========
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; ==========
;; config.org
;; ==========

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))



;; ==========
;; Custom-Set
;; ==========
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" default))
 '(package-selected-packages
   '(org-superstar lsp-ui lsp-mode switch-window org-bullets dashboard yasnippet-snippets yasnippet projectile magit doom-modeline evil-collection all-the-icons all-the-fonts which-key use-package spaceline rainbow-delimiters ivy-rich doom-themes counsel)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
