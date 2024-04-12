;;; cargo-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cargo-mode" "cargo-mode.el" (0 0 0 0))
;;; Generated autoloads from cargo-mode.el

(autoload 'cargo-mode-execute-task "cargo-mode" "\
Select and execute cargo task.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-test "cargo-mode" "\
Run the `cargo test` command.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-build "cargo-mode" "\
Run the `cargo build` command.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-test-current-buffer "cargo-mode" "\
Run the cargo test for the current buffer.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-test-current-test "cargo-mode" "\
Run the Cargo test command for the current test.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-last-command "cargo-mode" "\
Re-execute the last `cargo-mode` task." t nil)

(autoload 'cargo-minor-mode "cargo-mode" "\
Cargo minor mode.  Used for holding keybindings for `cargo-mode'.
\\{cargo-minor-mode-map}

If called interactively, enable Cargo minor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cargo-mode" '("cargo-")))

;;;***

;;;### (autoloads nil nil ("cargo-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cargo-mode-autoloads.el ends here
