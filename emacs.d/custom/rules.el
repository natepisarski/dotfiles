(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "/home/nate/.emacs.d/saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t) 
