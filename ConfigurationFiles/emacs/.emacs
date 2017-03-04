;; Welcome to the Sane, Configurable Emacs Customization Interface.
;; This file will provide you with sane defaults for using in your Emacs environment, and makes configuring your environment easier.

(setq *configuration-module-name* "~/.emacs.d/configuration/")
(defun config (x)
  (load (concat *configuration-module-name* x ".el")))

;; We give our configuration some basic tools to use
(config "BASE")

;; We must be able to use emacs packages
(config "packages")

;; First things first, let's set up our basic settings
(config "autosave-configuration")
(config "theme")
(config "togglables")

;; Now, let's load some more advanced (or optional) modules
(config "global-keybindings")
(config "global-hooks")

;; Finally, we start whichever modes we want and set additional settings
(config "additional-settings")
(config "additional-modes")
