
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-charcoal-black)

;; python-mode.el
(setq load-path
      (append (list nil
		    "~/.emacs.d/major-modes/python-mode-5.2.0"
		    )
	      load-path))

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                   interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;;(require 'python-mode)
