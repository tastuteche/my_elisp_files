;;; caps_lock2hyper.el --- Change Caps Lock to Hyper/Additional Modifier

;;; Commentary:
;; https://unix.stackexchange.com/questions/91743/can-i-change-caps-lock-to-hyper-additional-modifier

;;; Code:
(defvar xmodmap-file nil)

(setq xmodmap-file (expand-file-name "caps_lock2hyper.sh" user-emacs-directory))
(defun caps_lock2hyper ()
  "Change Caps Lock to Hyper/Additional Modifier."
  (interactive)
  (shell-command xmodmap-file nil))

(provide 'caps_lock2hyper)
;;; caps_lock2hyper.el ends here
