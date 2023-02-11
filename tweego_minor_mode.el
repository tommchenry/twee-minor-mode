;;("set\\|=\\|if\\|to\\|img\\|true\\|false" . 'font-lock-keyword-name-face)

(defconst my-twee-mode-syntax-table
  (let ((table (make-syntax-table)))
    ;; ' is a string delimiter
    (modify-syntax-entry ?\[ "(]" table)
    ;; " is a string delimiter too
    (modify-syntax-entry ?\] ")[" table)

    ;; / is punctuation, but // is a comment starter
    ;;(modify-syntax-entry ?: ". 12" table)
    ;; \n is a comment ender
    ;;(modify-syntax-entry ?\n ">" table)
    table))

(setq my-twee-highlights
      '(("::.*$" . 'font-lock-function-name-face)
	("<<\\|>>\\|set" . 'font-lock-warning-face)
	("\\$[a-zA-Z0-9_]+" . 'font-lock-variable-name-face)
	("\\[\\{2\\}.*?\]\\{2\\}" . 'font-lock-constant-face)))

(define-derived-mode my-twee-mode prog-mode "Twee Mode"
  "major mode for editing twee files"
  :syntax-table my-twee-mode-syntax-table
  (setq font-lock-defaults '(my-twee-highlights)))

(provide 'my-twee-mode)
