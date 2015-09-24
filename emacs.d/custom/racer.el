; Created on May 27th, 2015
(setq racer-rust-src-path "/home/nate/Downloads/racer/rust/src/")
(setq racer-cmd "/home/nate/Downloads/racer/target/release/racer")
(add-to-list 'load-path "/home/nate/Downloads/racer/editors/emacs")
(eval-after-load "rust-mode" '(require 'racer))
