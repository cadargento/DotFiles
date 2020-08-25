;;{{{ Set up package and use-package

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Bootstrap 'use-package'
(eval-after-load 'gnutls
  '(add-to-list 'gnutls-trustfiles "/etc/ssl/cert.pem"))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-always-ensure t)

;;}}}

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (spacemacs-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package spacemacs-theme
  :defer t
  :init (load-theme 'spacemacs-dark t))

(setq-default truncate-lines t)
(global-hl-line-mode +1)
;; highlight line with the cursor, preserving the colours.
;;(set-face-attribute 'hl-line nil :inherit nil :background "gray80")
(global-hl-line-mode 1)
;(set-face-background 'hl-line "#b5f7c6") 
;(set-face-background 'hl-line "#1d8237")
(set-face-background 'hl-line "#80032c")
(set-face-foreground 'highlight nil)

