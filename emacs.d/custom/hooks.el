;Haskell indentation for Haskell source files
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

;C-h C-y autocorrect
(add-hook 'flyspell-mode-hook (global-set-key (kbd "C-h C-y") 'flyspell-auto-correct-word))

;Spell checking on LaTeX documents,
(add-hook 'latex-mode-hook   'flyspell-mode)

;Spell checking on Markdown documents
(add-hook 'markdown-mode-hook 'flyspell-mode)
