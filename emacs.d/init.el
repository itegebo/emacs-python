;; tegebo's theme of the moment
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-charcoal-black)

;; python-mode.el
(add-to-list 'load-path "~/.emacs.d/major-modes/python-mode-5.2.0")
(add-to-list        'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python"   . python-mode))
(autoload 'python-mode "python-mode" "Python editing mode." t)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
;;need pymacs for (require 'pycomplete) and there may be better options

;; ipython.el
(add-to-list 'load-path "~/.emacs.d/lib/elisp")
(require 'ipython)
;; Workaround for completions in 0.10
;; http://mail.python.org/pipermail/python-mode/2011-January/000888.html
(setq ipython-completion-command-string
      "print(';'.join(__IP.Completer.all_completions('%s'))) #PYTHON-MODE SILENT\n")

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
