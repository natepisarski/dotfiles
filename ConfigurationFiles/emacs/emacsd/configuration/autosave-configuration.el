(setq *auto-save-directory* "~/.emacs.d/saves")
(setq backup-directory-alist
      `((".*" . ,*auto-save-directory*)))
(setq auto-save-file-name-transforms
      `((".*" ,*auto-save-directory* t)))
