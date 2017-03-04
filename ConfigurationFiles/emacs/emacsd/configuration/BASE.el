;; Functions that the modules can use to make loading a user's configuration easier
(setq *asset-directory* "Assets/")

(defun asset (x) (load (concat *configuration-module-name* *asset-directory* x ".el")))
