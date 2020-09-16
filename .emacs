(global-unset-key (kbd "M-e"))
(global-set-key (kbd "M-e") 'string-insert-rectangle)

;; configure tabbing to 4 spaces (trying again)

(setq default-tab-width 4) ; recommended on a few so etc pages...

(setq sgml-basic-offset 4) ; from https://stackoverflow.com/questions/532520/tabs-in-html-mode-in-emacs

; honestly dunno if this is helping.  maybe it is.
(custom-set-variables
 '(html-indent-level 4))

;; do not play an audible alarm when a search doens't find anything
(setq ring-bell-function 'ignore)

;; attach file types to major modes
;; from instructions at ergoemacs.org

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . java-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

