(setq user-full-name "Jordan Powell")

(defalias 'yes-or-no-p 'y-or-n-p)

(blink-cursor-mode 0)

(show-paren-mode 1)

(setq-default indent-tabs-mode 1)
(setq tab-width 2)

(setq sentence-end-double-space nil)

(global-visual-line-mode)
  :diminish 'visual-line-mode

(setq ring-bell-function 'ignore)

(progn
  ;; make indentation commands use space only (never tab character)
  (setq-default indent-tabs-mode nil)
  ;; emacs 23.1, 24.2, default to t
  ;; if indent-tabs-mode is t, it means it may use tab, resulting mixed space and tab
  )

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(defun comment-region-timestamp ()
  (interactive)
  (setq timestamp (format-time-string "(%d-%b-%y)"))
  (insert (format ";; jdp %s: " timestamp)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes") 
(load-theme 'master t)

(set-default-font "Nimbus Mono L Bold 14")

(column-number-mode 1)
(global-linum-mode 0)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)

(setq inhibit-startup-message 1)
(setq initial-scratch-message "")

(use-package ace-window
  :ensure t
  :config
   (setq aw-keys '(?1 ?2 ?3 ?4 ?5))
   (setq aw-background nil)
  :init
   (progn
      (global-set-key [remap other-window] 'ace-window)
))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package undo-tree
  :ensure t
  :bind
  (("C-S-z" . undo-tree-redo)
   ("C-z" . undo-tree-undo))
  :init
  (global-undo-tree-mode))

(use-package helm
  :ensure t
  :diminish helm-mode
  :init (progn
          (require 'helm-config)
          (use-package helm-projectile
            :ensure t
            :commands helm-projectile
            :bind ("C-c p h" . helm-projectile))
          (use-package helm-ag :defer 10  :ensure t)
          (setq helm-locate-command "mdfind -interpret -name %s %s"
                helm-ff-newfile-prompt-p nil
                helm-M-x-fuzzy-match t)
          (helm-mode)
          (use-package helm-swoop
            :ensure t
            :bind ("H-w" . helm-swoop)))
  :bind (("C-c h" . helm-command-prefix)
         ("C-x b" . helm-mini)
         ("C-`" . helm-resume)
         ("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)))

(use-package org
  :ensure t
  :ensure org-plus-contrib)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(bind-key "C-c l" 'org-store-link)
(bind-key "C-c c" 'org-capture)
(bind-key "C-c a" 'org-agenda)

(setq org-agenda-files
      (delq nil
            (mapcar (lambda (x) (and (file-exists-p x) x))
                    '("~/Dropbox/Agenda"))))

(bind-key "C-c c" 'org-capture)
(setq org-default-notes-file "~/Dropbox/Notes/notes.org")

(setq org-use-speed-commands t)

(setq org-image-actual-width 550)

(setq org-highlight-latex-and-related '(latex script entities))

(setq org-tags-column 45)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (C . t)
   (calc . t)
   (latex . t)
   (java . t)
   (ruby . t)
   (lisp . t)
   (scheme . t)
   (shell . t)
   (sqlite . t)
   (js . t)))

(defun my-org-confirm-babel-evaluate (lang body)
  "Do not confirm evaluation for these languages."
  (not (or (string= lang "C")
           (string= lang "java")
           (string= lang "python")
           (string= lang "emacs-lisp")
           (string= lang "sqlite"))))
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

(setq org-src-fontify-natively t
      org-src-window-setup 'current-window
      org-src-strip-leading-and-trailing-blank-lines t
      org-src-preserve-indentation t
      org-src-tab-acts-natively t)

(setq org-latex-pdf-process (list "latexmk -pdf %f"))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(use-package c++-mode
  :diminish
  :bind
       (("<f5>" . recompile)
        ("<f4>" . compile)))

(use-package emacs-lisp-mode
   :bind 
       ("C-j" . eval-print-last-sexp))

(use-package mode-icons
  :ensure t
  :config
  (mode-icons-mode t))
