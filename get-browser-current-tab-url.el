(defun process-exit-code-and-output (program &rest args)
  "Run PROGRAM with ARGS and return the exit code and output in a list."
  (with-temp-buffer
    (list (apply 'call-process program nil (current-buffer) nil args)
          (buffer-string))))

(defun get-browser-current-tab-url ()
  (let* ((result (process-exit-code-and-output (expand-file-name "get-browser-current-tab-url.sh" user-emacs-directory)))
         (status (car result))
         (output (car (cdr result)))
         )
    (if (equal status  0)
        output
      (error output))))
;;;###autoload
(defun insert-browser-current-tab-url ()
  (interactive)
  (insert (get-browser-current-tab-url)))

(provide 'get-browser-current-tab-url)

