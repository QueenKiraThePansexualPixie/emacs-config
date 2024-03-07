;;; package --- Summary
;;; Commentary:
;;;  ??? - Get smortr

(require 'package)

;;; Code:

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(atom-one-dark-theme multiple-cursors company flycheck lsp-ui lsp-mode tree-sitter-langs tree-sitter rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'multiple-cursors)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(add-hook 'after-init-hook 'global-company-mode)

(require 'lsp-mode)

(use-package lsp-ui)

(require 'tree-sitter)
(require 'tree-sitter-langs)
(use-package tree-sitter
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(require 'rust-mode)
(add-hook 'rust-mode-hook
	  (lambda () (setq indent-tabs-mode nil)))
(add-hook 'rust-mode-hook #'tree-sitter-mode)
(add-hook 'rust-mode-hook #'lsp)

;; THEMES

(load-theme 'atom-one-dark t)

;; OTHER CONFIG

;; Start Emacs in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(provide 'init)
;;; init.el ends here
(put 'downcase-region 'disabled nil)
