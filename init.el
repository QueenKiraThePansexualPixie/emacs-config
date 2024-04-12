;;; package --- Summary
;;; Commentary:
;;;  ??? - Get smortr

;;; Visuals:

;; Start Emacs in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set theme to "Atom One Dark"
(load-theme 'atom-one-dark t)

;; Set default font to "Fira Code", 14 points
(set-face-attribute 'default nil :family "Fira Code" :height 140)


(require 'package)

;;; Code:

;; Add melpa
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
   '(cargo-mode go-mode flycheck-ocaml lsp-scheme lsp-latex lsp-java lsp-haskell lsp-docker company-lua company-anaconda atom-one-dark-theme multiple-cursors company flycheck lsp-ui lsp-mode tree-sitter-langs tree-sitter rust-mode)))
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
(add-hook 'rust-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'rust-mode-hook #'tree-sitter-mode)
(add-hook 'rust-mode-hook #'lsp)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(require 'go-mode)
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'tree-sitter-mode)
(add-hook 'go-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'go-mode-hook (lambda () (setq tab-width 4)))

;; (To Be Added) OTHER CONFIG

(provide 'init)
;;; init.el ends here
(put 'downcase-region 'disabled nil)
