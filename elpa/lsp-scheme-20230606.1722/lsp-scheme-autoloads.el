;;; lsp-scheme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "lsp-scheme" "lsp-scheme.el" (0 0 0 0))
;;; Generated autoloads from lsp-scheme.el

(autoload 'lsp-scheme-chicken "lsp-scheme" "\
Register CHICKEN's LSP server if needed." nil nil)

(autoload 'lsp-scheme-gambit "lsp-scheme" "\
Register Guile's LSP server if needed." nil nil)

(autoload 'lsp-scheme-guile "lsp-scheme" "\
Regist Guile's LSP server if needed." nil nil)

(autoload 'lsp-scheme "lsp-scheme" "\
Setup and start Scheme's LSP server." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-scheme" '("lsp-scheme-")))

;;;***

;;;### (autoloads nil nil ("lsp-scheme-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-scheme-autoloads.el ends here
