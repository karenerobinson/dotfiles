(global-unset-key (kbd "M-e"))
(global-set-key (kbd "M-e") 'string-insert-rectangle)

;; configure tabbing to 4 spaces (trying again)

(setq default-tab-width 4)

(setq sgml-basic-offset 4)

(custom-set-variables
 '(html-indent-level 4))
    
;; configure tabbing to 4 spaces
;; from https://stackoverflow.com/questions/69934/set-4-space-indent-in-emacs-in-text-mode/10439239

;(setq-default indent-tabs-mode nil)
;(setq-default tab-width 4)

;(setq-default indent-tabs-mode nil)
;(setq-default tab-width 4)
;(setq indent-line-function 'insert-tab)

;; do not play an audible alarm when a search doens't find anything
(setq ring-bell-function 'ignore)

;; attach file types to major modes
;; from instructions at ergoemacs.org

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . java-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

