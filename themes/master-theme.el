;;;Master Theme for my emacs configuration. Easy on the eyes.
;;; 'M-x' list-faces-display to view faces
(deftheme master "One Theme to Rule Them ALL")

;;;let variables surround the custom-theme-set-face
(let (
      ;;Default Background and Foreground and Cursor colors
      (dBG "#191919") (dFG "#4682b4") (white "#ffffff") (black "#000000")

      ;;Defined Colors
      (darkRed "#931027")
      (darkOrange "#db3b00")
      (mediumBlue "#49639a")
      (lightGreen "#59a454")
      (lightBlue "#3b5999")
      (lightOrange "#ff671f")
      (lightGrey "#acb0b8")
      (grey "#bebebe")
      (babyBlue "#4682b4")
      (teal "#04abab")
      

      ;;Font Style
      (fontStyle "Ubuntu Mono L") 
      
      )
  
(custom-theme-set-faces
 'master
 
 ;;========================= Defaults ==========================================
 `(default ((t (:family ,fontStyle :width normal :height ,135 :background ,dBG :foreground ,babyBlue ))))
 `(region ((t (:foreground ,darkRed ))))
 `(cursor ((t (:background ,white ))))
 `(fringe ((t (:background ,dBG ))))
 
 ;;========================== Mode Line ========================================

 `(mode-line ((t (:background ,dBG :foreground ,dFG ))))
 `(mode-line-inactive ((t (:background ,dBG :foreground ,black ))))
 `(mode-line-buffer-id ((t (:background ,dBG :foreground ,darkOrange ))))

 ;;============================ MiniBuffer =====================================
 `(minibuffer-prompt ((t (:background ,dBG :foreground ,dFG ))))
 
 ;;============================== Helm =========================================

 `(helm-selection ((t (:background ,dBG :foreground ,dFG ))))
 `(helm-candidate-number ((t (:background ,dBG :foreground ,lightOrange ))))
 `(helm-match ((t (:background ,dBG :foreground ,lightOrange ))))
 `(helm-ff-directory ((t (:background ,dBG :foreground ,lightOrange :underline t ))))
 `(helm-ff-dotted-directory ((t (:background ,dBG :foreground ,grey ))))
 `(helm-ff-file ((t (:background ,dBG :foreground ,mediumBlue ))))
 `(helm-ff-executable ((t (:background ,dBG :foreground ,lightGreen ))))
 `(helm-source-header ((t (:background ,lightBlue :foreground ,white ))))

 ;;========================Syntax Highlighting==================================
 
 `(font-lock-keyword-face ((t (:background ,dBG :foreground ,lightOrange ))))
 `(font-lock-type-face ((t (:foreground ,darkRed ))))
 `(font-lock-constant-face ((t (:foreground ,mediumBlue  ))))
 `(font-lock-variable-name-face ((t (:foreground ,lightBlue ))))
 `(font-lock-builtin-face ((t (:foreground ,lightOrange ))))
 `(font-lock-string-face ((t (:foreground ,lightGreen ))))
 `(font-lock-preprocessor-face ((t (:foreground ,lightGreen ))))
 `(font-lock-reference-face ((t (:foreground "WHITE" ))))
 `(font-lock-comment-face ((t (:foreground ,lightGrey ))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,lightGrey ))))
 `(font-lock-warning-face ((t (:foreground "WHITE" ))))
 `(font-lock-negation-char-face ((t (:foreground "WHITE" ))))
 `(font-lock-function-name-face ((t (:foreground ,mediumBlue ))))
 `(font-lock-doc-face ((t (:foreground "WHITE" ))))
 `(font-lock-doc-string-face ((t (:foreground "WHITE" ))))

 ;;==========================Org-Mode========================================
 
 `(org-level-1 ((t (:bold t :foreground ,lightGreen :height 1.1))))
 `(org-level-2 ((t (:bold t :foreground ,lightOrange))))
 `(org-level-3 ((t (:bold t :foreground ,teal))))
 `(org-level-4 ((t (:bold t :foreground ,lightGreen :height 1.1))))
 `(org-level-5 ((t (:bold t :foreground ,lightOrange))))
 `(org-level-6 ((t (:bold t :foreground ,teal))))
 `(org-link ((t (:underline t :foreground ,lightGreen ))))
 `(org-meta-line ((t (:inherit default ))))
 `(org-code ((t (:inherit default ))))
 `(org-block ((t (:inherit default :foreground ,lightGrey ))))
 
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

 ;;======================== Evil =================================================

 `(isearch ((t (:background ,dBG :foreground ,darkRed ))))
 `(evil-ex-search ((t (:background ,dBG :foreground ,darkRed ))))

 ;;======================== Company ==============================================

 `(company-template-field ((t (:background ,grey :foreground ,dFG ))))
 `(company-tooltip ((t (:background ,dBG :foreground ,dFG ))))
 `(company-tooltip-selection ((t (:background ,dBG :foreground ,lightOrange ))))
 `(company-tooltip-common ((t (:background ,dBG :foreground ,lightOrange ))))





 
 );;end of custom-faces


) ;;end of variable declaration
 



;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'master)

(provide 'master-theme)
;;;master-theme ends here
