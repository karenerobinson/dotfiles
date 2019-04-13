(global-unset-key (kbd "M-e"))
(global-set-key (kbd "M-e") 'string-insert-rectangle)

;; do not play an audible alarm when a search doens't find anything
(setq ring-bell-function 'ignore)

;; attach file types to major modes
;; from instructions at ergoemacs.org

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . java-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
