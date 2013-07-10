

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(require 'edit-server)
(edit-server-start)

(add-to-list 'load-path
              "~/.emacs.d/plugins/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(add-hook 'edit-server-start-hook
          (lambda ()
            (when (string-match "help2.opscode.com" (buffer-name))
              (markdown-mode))))
