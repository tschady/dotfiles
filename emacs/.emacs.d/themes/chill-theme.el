(setq debug-on-error t)

(deftheme chill
  "blues and greens")

(let ((class '((class color) (min-colors 89)))

;      (chill-fg-2      "#BAB5A0")
;      (chill-fg-1      "#C7C3B2")
;      (chill-fg        "#D8D5C9")
;      (chill-fg+1      "#ECEAE4")

      (chill-fg-3      "grey35")
      (chill-fg-2      "grey45")
      (chill-fg-1      "grey55")
      (chill-fg        "grey65")
      (chill-fg+1      "grey75")
      (chill-fg+2      "grey85")

      (chill-bg-2      "grey12")
      (chill-bg-1      "grey14")
      (chill-bg        "grey18")
      (chill-bg+1      "grey28")
      (chill-bg+2      "grey40")

      (chill-blue      "#7B89A7")
	  ; (chill-blue+1    "#8A94A8")
      (chill-blue+1    "#A3AAB8")
      (chill-blue+2    "#99B3E6")

      (chill-green-1   "#4A6D4A")
      (chill-green     "#73A073")
      (chill-green+1   "#8FB28F") ; zenburn
      (chill-green+2   "#9FC59F") ; zenburn
      (chill-green+3   "#AFD8AF") ; zenburn

      (chill-violet    "#B081DF")
      (chill-orange    "#DFAF8F") ; zenburn
      (chill-yellow    "#F0DFAF") ; zenburn
      (chill-yellow-1  "#E0CF9F") ; zenburn
      (chill-yellow-2  "#D0BF8F") ; zenburn

      (chill-red+1     "#DCA3A3") ; zenburn
      (chill-red       "#CC9393") ; zenburn
      (chill-red-1     "#BC8383") ; zenburn
      (chill-red-2     "#AC7373") ; zenburn
      (chill-red-3     "#9C6363") ; zenburn
      (chill-red-4     "#8C5353") ; zenburn

      (chill-gray    "LightSteelBlue4")

      )

  (custom-theme-set-faces
   'chill
   `(default ((,class (:foreground ,chill-fg :background ,chill-bg))))

   ;; Buttons
   `(button ((,class (:underline t))))
   `(link ((,class (:foreground ,chill-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,chill-yellow-2
					:underline t :weight normal))))

   ;; show-parens
   `(show-paren-match ((,class (:foreground ,chill-bg-1 :background ,chill-fg+1
                                            :weight bold))))

   ;; Window and frame
   `(cursor ((,class (:foreground ,chill-fg :background ,chill-fg+1))))
   ; header-line
   `(fringe ((,class (:foreground ,chill-fg-2 :background ,chill-bg-1))))
   `(linum ((,class (:foreground ,chill-fg-2 :background ,chill-bg))))
   `(menu ((,class (:foreground ,chill-fg :background ,chill-bg))))
   `(minibuffer-prompt ((,class (:foreground ,chill-yellow))))
   `(mode-line ((,class (:foreground ,chill-fg-2 :background ,chill-bg-1
			   :box (:line-width -1 :style released-button))) (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:weight normal))))
   ; mode-line-highlight
   `(mode-line-inactive ((,class (:foreground ,chill-fg-2 :background ,chill-bg-2
			   :box (:line-width -1 :style released-button)))))
   ; mouse
   ; scroll-bar
   ; tool-bar
   ; tooltip
   ; vertical-border

   ;; Error conditions
   `(error   ((,class (:foreground ,chill-red    :weight bold))))
   `(warning ((,class (:foreground ,chill-orange :weight bold))))
   `(success ((,class (:foreground ,chill-green  :weight bold))))

   ;; Font lock faces
   `(font-lock-builtin-face       ((,class (:foreground ,chill-yellow-2))))
   ; font-lock-comment-delimiter-face
   `(font-lock-comment-face       ((,class (:foreground ,chill-green
														:slant italic))))
   `(font-lock-constant-face      ((,class (:foreground ,chill-blue+1))))
   ; font-lock-doc-face
   ; font-lock-doc-string-face
   `(font-lock-function-name-face ((,class (:foreground ,chill-blue))))
   `(font-lock-keyword-face       ((,class (:foreground ,chill-blue+2))))
   ; font-lock-negation-char-face
   ; `(font-lock-preprocessor-face  ((,class (:foreground ,chill-blue+2))))
   `(font-lock-string-face        ((,class (:foreground ,chill-green+2))))
   `(font-lock-type-face          ((,class (:foreground ,chill-yellow-2))))
   `(font-lock-variable-name-face ((,class (:foreground ,chill-fg))))
   `(font-lock-warning-face       ((,class (:foreground ,chill-orange
														:weight bold))))

   ;; Highlighting faces
   `(escape-glyph ((,class (:foreground ,chill-yellow :weight bold))))
   `(highlight ((,class (:background ,chill-bg-1))))
   `(isearch ((,class (:foreground ,chill-yellow :background ,chill-bg-2
                                   :weight bold))))
   `(isearch-fail ((,class (:foreground ,chill-bg :background ,chill-red))))
   `(lazy-highlight ((,class (:foreground ,chill-yellow-2 :background ,chill-bg+1
                                          :weight bold))))
   ; nobreak-space
   ; query-replace
   `(region ((,class (:background ,chill-bg-1)) (t :inverse-video t)))
   `(secondary-selection ((,class (:background ,chill-bg+2))))
   `(trailing-whitespace ((,class (:background ,chill-red))))

   ;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-red) :inherit unspecified))
      (,class (:foreground ,chill-red-1 :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-orange) :inherit unspecified))
      (,class (:foreground ,chill-orange :weight bold :underline t))))
   `(flycheck-fringe-error ((,class (:foreground ,chill-red-1 :weight bold))))
   `(flycheck-fringe-warning ((,class (:foreground ,chill-orange :weight bold))))

   ;; flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-red)
                   :inherit unspecified 
		   :foreground unspecified :background unspecified))
      (,class (:foreground ,chill-red-1 :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-orange)
                   :inherit unspecified 
		   :foreground unspecified :background unspecified))
      (,class (:foreground ,chill-orange :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-green)
                   :inherit unspecified 
		   :foreground unspecified :background unspecified))
      (,class (:foreground ,chill-green-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-orange) :inherit unspecified))
      (,class (:foreground ,chill-orange :weight bold :underline t))))
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,chill-red) :inherit unspecified))
      (,class (:foreground ,chill-red-1 :weight bold :underline t))))

   ;; Markup faces for modes that use markup-faces.el like AsciiDoc
   `(markup-gen-face ((,class (:foreground ,chill-blue+2))))
   ; markup-title-0-face
   ; markup-title-1-face
   ; markup-title-2-face
   ; markup-title-3-face
   ; markup-title-4-face
   ; markup-title-5-face
   ;  markup-emphasis-face
   ; markup-strong-face
   `(markup-verbatim-face ((,class (:background ,chill-red-4))))
   ; markup-code-face
   ; `(markup-superscript-face ((,class (:height 0.8))))
   ; `(markup-subscript-face ((,class (:height 0.8))))
   ; markup-reference-face
   `(markup-secondary-text-face ((,class (:foreground ,chill-red))))
   ; markup-italic-face
   ; markup-bold-face
   ; markup-underline-face
   ; markup-typewriter-face
   ; `(markup-small-face ((,class (:foreground ,chill-fg))))
   ; `(markup-big-face ((,class (:foreground ,chill-fg))))
   `(markup-meta-face ((,class (:foreground ,chill-blue))))
   `(markup-delimiter-face ((,class (:foreground ,chill-blue))))
   `(markup-meta-hide-face ((,class (:foreground ,chill-blue))))
   `(markup-hide-delimiter-face ((,class (:foreground ,chill-blue))))
   ; markup-command-face
   ; markup-attribute-face
   ; markup-value-face
   ; `(markup-complex-replacement-face ((,class (:foreground ,chill-fg))))
   ; `(markup-list-face ((,class (:foreground ,chill-fg))))
   ; `(markup-table-face ((,class (:foreground ,chill-fg))))
   ; markup-table-row-face
   ; `(markup-table-cell-face ((,class (:foreground ,chill-fg))))
   ; markup-anchor-face
   ; markup-internal-reference-face
   ; markup-comment-face
   ; markup-preprocessor-face
   ; `(markup-replacement-face ((,class (:foreground ,chill-fg))))
   ; markup-passthrough-face
   ; markup-error-face

   ;; YARD
   `(yard-directive-face ((,class (:foreground ,chill-green+3))))
   `(yard-name-face ((,class (:foreground ,chill-green+2))))
   `(yard-option-face ((,class (:foreground ,chill-green+3))))
   `(yard-tag-face ((,class (:foreground ,chill-green+2))))
   `(yard-types-face ((,class (:foreground ,chill-green-1))))

   ;; ;; Gnus faces
   ;; `(gnus-group-news-1 ((,class (:weight bold :foreground ,plum-3))))
   ;; `(gnus-group-news-1-low ((,class (:foreground ,plum-3))))
   ;; `(gnus-group-news-2 ((,class (:weight bold :foreground ,blue-3))))
   ;; `(gnus-group-news-2-low ((,class (:foreground ,blue-3))))
   ;; `(gnus-group-news-3 ((,class (:weight bold :foreground ,red-3))))
   ;; `(gnus-group-news-3-low ((,class (:foreground ,red-3))))
   ;; `(gnus-group-news-4 ((,class (:weight bold :foreground ,"#7a4c02"))))
   ;; `(gnus-group-news-4-low ((,class (:foreground ,"#7a4c02"))))
   ;; `(gnus-group-news-5 ((,class (:weight bold :foreground ,orange-3))))
   ;; `(gnus-group-news-5-low ((,class (:foreground ,orange-3))))
   ;; `(gnus-group-news-low ((,class (:foreground ,alum-4))))
   ;; `(gnus-group-mail-1 ((,class (:weight bold :foreground ,plum-3))))
   ;; `(gnus-group-mail-1-low ((,class (:foreground ,plum-3))))
   ;; `(gnus-group-mail-2 ((,class (:weight bold :foreground ,blue-3))))
   ;; `(gnus-group-mail-2-low ((,class (:foreground ,blue-3))))
   ;; `(gnus-group-mail-3 ((,class (:weight bold :foreground ,cham-3))))
   ;; `(gnus-group-mail-3-low ((,class (:foreground ,cham-3))))
   ;; `(gnus-group-mail-low ((,class (:foreground ,alum-4))))
   ;; `(gnus-header-content ((,class (:foreground ,cham-3))))
   ;; `(gnus-header-from ((,class (:weight bold :foreground ,butter-3))))
   ;; `(gnus-header-subject ((,class (:foreground ,red-3))))
   ;; `(gnus-header-name ((,class (:foreground ,blue-3))))
   ;; `(gnus-header-newsgroups ((,class (:foreground ,alum-4))))

   ;; ;; Message faces
   ;; `(message-header-name ((,class (:foreground ,blue-3))))
   ;; `(message-header-cc ((,class (:foreground ,butter-3))))
   ;; `(message-header-other ((,class (:foreground ,choc-2))))
   ;; `(message-header-subject ((,class (:foreground ,red-3))))
   ;; `(message-header-to ((,class (:weight bold :foreground ,butter-3))))
   ;; `(message-cited-text ((,class (:slant italic :foreground ,alum-5))))
   ;; `(message-separator ((,class (:weight bold :foreground ,cham-3))))

   ;; ;; SMerge
   ;; `(smerge-refined-change ((,class (:background ,plum-1))))

   ;; ;; Ediff
   ;; `(ediff-current-diff-A ((,class (:background ,blue-1))))
   ;; `(ediff-fine-diff-A ((,class (:background ,plum-1))))
   ;; `(ediff-current-diff-B ((,class (:background ,butter-1))))
   ;; `(ediff-fine-diff-B ((,class (:background ,orange-1))))

   ;; ;; Semantic faces
   ;; `(semantic-decoration-on-includes ((,class (:underline  ,cham-4))))
   ;; `(semantic-decoration-on-private-members-face
   ;;   ((,class (:background ,alum-2))))
   ;; `(semantic-decoration-on-protected-members-face
   ;;   ((,class (:background ,alum-2))))
   ;; `(semantic-decoration-on-unknown-includes
   ;;   ((,class (:background ,choc-3))))
   ;; `(semantic-decoration-on-unparsed-includes
   ;;   ((,class (:underline  ,orange-3))))
   ;; `(semantic-tag-boundary-face ((,class (:overline   ,blue-1))))
   ;; `(semantic-unmatched-syntax-face ((,class (:underline  ,red-1)))))
   )

  (custom-theme-set-variables
   'chill
   `(ansi-color-names-vector ["black" "red" "green" "yellow" 
			      "blue" "magenta" "cyan" "white"]))
)
(provide-theme 'chill)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
