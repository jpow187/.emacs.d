(deftheme master "One Theme to Rule Them ALL")

;;;let variables surround the custom-theme-set-face
(let (
      ;;Default Background and Foreground and Cursor colors
      (dBG "#191919") (dFG "#3b5998") (white "#ffffff") (black "#000000")

      ;;Syntax Highlight
      (darkRed "#931027")
      (darkOrange "#db3b00")
      (mediumBlue "#49639a")
      (lightGreen "#59a454")
      (lightBlue "#772a1")
      (lightOrange "#ff671f")
      (lightGrey "#acb0b8")

      ;;Font Style
      (fontStyle "Nimbus Mono L")

      )
(custom-theme-set-faces
 'master
 ;;default => is the main background and character color
 `(default ((t (:family ,fontStyle :background ,dBG :foreground ,dFG ))))

 ;;region => Highlights text 
 `(region ((t (:foreground ,darkRed ))))

 ;;cursor => Customizes the color of the keyboard cursor
 `(cursor ((t (:background ,white ))))

 ;;fringe => is the fringe color along the side of the windows 
 `(fringe ((t (:background ,dBG ))))

 ;;minibuffer-prompt => IDK
 `(minibufffer-prompt ((t (:inherit nil ))))

 ;;minibuffer-message => IDK
 `(minibufffer-message ((t (:inherit nil ))))
 
 ;;Mode-Line => is the active mode line when multiple windows are open
 `(mode-line ((t (:background ,dBG :foreground ,dFG ))))

 ;;Mode-Line-inactive => is the mode line for the windows you're not navigating
 `(mode-line-inactive ((t (:background ,dBG :foreground ,black ))))

 ;;Mode-Line-buffer-ID => is the buffer name in each  window
 `(mode-line-buffer-id ((t (:background ,dBG :foreground ,darkOrange ))))

 ;;MiniBuffer => is the character color of "M-x" in  the minibuffer
 `(minibuffer-prompt ((t (:background ,dBG :foreground ,dFG ))))

 ;;========================Syntax Highlighting==================================
 
 ;;logic keywords => for, while, new, delete 
 `(font-lock-keyword-face ((t (:background ,dBG :foreground ,lightOrange ))))

 ;;Type Keywords => int, char, string, double
 `(font-lock-type-face ((t (:foreground ,darkRed ))))

 ;;Constants => syntax highlight for constant objects C-namespaces
 `(font-lock-constant-face ((t (:foreground ,mediumBlue  ))))

 ;; Variables => user defined variables
 `(font-lock-variable-name-face ((t (:foreground ,lightBlue ))))

 ;;Built-in fucntions => lisp built-in functions and python data types
 `(font-lock-builtin-face ((t (:foreground ,lightOrange ))))

 ;;Strings => Syntax highlights for strings
 `(font-lock-string-face ((t (:foreground ,lightGreen ))))

 ;;Preprocessor Statements => import, #include 
 `(font-lock-preprocessor-face ((t (:foreground ,lightGreen ))))

 ;;IDK
 `(font-lock-reference-face ((t (:foreground "WHITE" ))))

 ;;Comments => comments after the comment syntax
 `(font-lock-comment-face ((t (:foreground ,lightGrey ))))

 ;;Comments keyword => //, ;;, #, /* ... */ 
 `(font-lock-comment-delimiter-face ((t (:foreground ,lightGrey ))))

 ;;warnings => IDK
 `(font-lock-warning-face ((t (:foreground "WHITE" ))))

 ;;IDK
 `(font-lock-negation-char-face ((t (:foreground "WHITE" ))))

 ;;Function name => highlights function names
 `(font-lock-function-name-face ((t (:foreground ,mediumBlue ))))

 ;;IDK
 `(font-lock-doc-face ((t (:foreground "WHITE" ))))

 ;;IDK
 `(font-lock-doc-string-face ((t (:foreground "WHITE" ))))

 ;;==========================flymake========================================

  ;;'(flymake-errline ((t (:foreground "#EE8888" :background nil :underline nil))))
  
  ;;'(flymake-warnline ((t (:foreground "#8888FF" :background "#303030" :underline wav))))

 ;;==========================Org-Mode========================================
 
 ;; `(link ((t (:foreground ,const :underline t))))
 ;; `(org-code ((t (:foreground ,fg2))))
 ;; `(org-hide ((t (:foreground ,fg4))))
 ;; `(org-level-1 ((t (:bold t :foreground ,fg2 :height 1.1))))
 ;; `(org-level-2 ((t (:bold nil :foreground ,fg3))))
 ;; `(org-level-3 ((t (:bold t :foreground ,fg4))))
 ;; `(org-level-4 ((t (:bold nil :foreground ,bg5))))
 ;; `(org-date    ((t (:underline t :foreground ,var) )))
 ;; `(org-footnote ((t (:underline t :foreground ,fg4))))
 ;; `(org-link ((t (:underline t :foreground ,type ))))
 ;; `(org-special-keyword ((t (:foreground ,func))))
 ;; `(org-block ((t (:foreground ,fg3))))
 ;; `(org-quote ((t (:inherit org-block :slant italic))))
 ;; `(org-verse ((t (:inherit org-block :slant italic))))
 ;; `(org-todo ((t (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
 ;; `(org-done ((t (:box (:line-width 1 :color ,bg4) :bold t :foreground ,bg5))))
 ;; `(org-warning ((t (:underline t :foreground ,warning))))
 ;; `(org-agenda-structure ((t (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg4))))
 ;; `(org-agenda-date ((t (:foreground ,var :height 1.1 ))))
 ;; `(org-agenda-date-weekend ((t (:weight normal :foreground ,fg4))))
 ;; `(org-agenda-date-today ((t (:weight bold :foreground ,keyword :height 1.4))))
 ;; `(org-agenda-done ((t (:foreground ,bg5))))
 ;; `(org-scheduled  ((t (:foreground ,type))))
 ;; `(org-scheduled-today ((t (:foreground ,func :weight bold :height 1.2))))
 ;; `(org-ellipsis ((t (:foreground ,builtin))))
 ;; `(org-verbatim ((t (:foreground ,fg4))))
 ;; `(org-document-info-keyword ((t (:foreground ,func))))

 ;;============================LaTeX===========================================
 
 ;; `(font-latex-bold-face ((t (:foreground ,type))))
 ;; `(font-latex-italic-face ((t (:foreground ,key3 :italic t))))
 ;; `(font-latex-string-face ((t (:foreground ,str))))
 ;; `(font-latex-match-reference-keywords ((t (:foreground ,const))))
 ;; `(font-latex-match-variable-keywords ((t (:foreground ,var))))

 ;;============================MaGit============================================

 ;; `(magit-item-highlight ((t :background ,bg4)))
 ;; `(magit-section-heading ((t (:foreground ,keyword :weight bold))))
 ;; `(magit-hunk-heading ((t (:background ,bg4))))
 ;; `(magit-section-highlight ((t (:background ,bg3))))
 ;; `(magit-hunk-heading-highlight ((t (:background ,bg4))))
 ;; `(magit-diff-context-highlight ((t (:background ,bg4 :foreground ,fg3))))
 ;;`(magit-diffstat-added ((t (:foreground ,type))))
 ;;`(magit-diffstat-removed ((t (:foreground ,var))))
 ;;`(magit-process-ok ((t (:foreground ,func :weight bold))))
 ;;`(magit-process-ng ((t (:foreground ,warning :weight bold))))
 ;;`(magit-branch ((t (:foreground ,const :weight bold))))
 ;;`(magit-log-author ((t (:foreground ,fg3))))
 ;;`(magit-hash ((t (:foreground ,fg2))))
 ;; `(magit-diff-file-header ((t (:foreground ,fg2 :background ,bg4))))

 ;;==============================term=====================================

 `(term  ((t (:background ,dBG))))
 `(term-color-black ((t (:background ,dBG ))))
 `(term-color-blue ((t (:background ,dBG ))))
 `(term-color-red ((t (:background ,dBG ))))
 `(term-color-green ((t (:background ,dBG ))))
 `(term-color-yellow ((t (:background ,dBG ))))
 `(term-color-magenta ((t (:background ,dBG ))))
 `(term-color-cyan ((t (:background ,dBG  ))))
 `(term-color-white ((t (:background ,dBG ))))


 ;;=============================helm=======================================

;;`(helm-header ((t (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
;;`(helm-source-header ((t (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
;;`(helm-selection ((t (:background ,bg3 :underline nil))))
;;`(helm-selection-line ((t (:background ,bg3))))
;;`(helm-visible-mark ((t (:foreground ,bg1 :background ,bg4))))
;;`(helm-candidate-number ((t (:foreground ,bg1 :background ,fg1))))
;;`(helm-separator ((t (:foreground ,type :background ,bg1))))
;;`(helm-time-zone-current ((t (:foreground ,builtin :background ,bg1))))
;;`(helm-time-zone-home ((t (:foreground ,type :background ,bg1))))
;;`(helm-buffer-not-saved ((t (:foreground ,type :background ,bg1))))
;;`(helm-buffer-process ((t (:foreground ,builtin :background ,bg1))))
;;`(helm-buffer-saved-out ((t (:foreground ,fg1 :background ,bg1))))
;;`(helm-buffer-size  ((t (:foreground ,fg1 :background ,bg1))))
;;`(helm-ff-directory ((t (:foreground ,func :background ,bg1 :weight bold))))
;;`(helm-ff-file ((t (:foreground ,fg1 :background ,bg1 :weight normal))))
;;`(helm-ff-executable  ((t (:foreground ,key2 :background ,bg1 :weight normal))))
;;`(helm-ff-invalid-symlink ((t (:foreground ,key3 :background ,bg1 :weight bold))))
;;`(helm-ff-symlink ((t (:foreground ,keyword :background ,bg1 :weight bold))))
;;`(helm-ff-prefix  ((t (:foreground ,bg1 :background ,keyword :weight normal))))
;;`(helm-grep-cmd-line  ((t (:foreground ,fg1 :background ,bg1))))
;;`(helm-grep-file ((t (:foreground ,fg1 :background ,bg1))))
;;`(helm-grep-finish ((t (:foreground ,fg2 :background ,bg1))))
;;`(helm-grep-lineno ((t (:foreground ,fg1 :background ,bg1))))
;;`(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
;;`(helm-grep-running   ((t (:foreground ,func :background ,bg1))))
;;`(helm-moccur-buffer ((t (:foreground ,func :background ,bg1))))
;;`(helm-source-go-package-godoc-description ((t (:foreground ,str))))
;;`(helm-bookmark-w3m ((t (:foreground ,type))))




 );;end of custom-faces


) ;;end of variable declaration
 



;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


(provide-theme 'master)

(provide 'master-theme)
;;;master-theme ends here
