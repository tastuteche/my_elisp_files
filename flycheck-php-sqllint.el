;;; flycheck-php-sqllint.el --- Integrate php-sqllint with flycheck

;; Copyright (c) 2017 Tastu Teche
;;
;; Author: Tastu Teche <tastuteche@yahoo.com>
;; Maintainer: Tastu Teche <tastuteche@yahoo.com>
;; URL: https://github.com/tastuteche/my_elisp_files/flycheck-php-sqllint.el
;; Version: 0.1.0
;; Package-Requires: ((flycheck "0.24"))

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Integrate php-sqllint with flycheck


;;; Code:
(require 'flycheck)

(flycheck-define-checker php-sqllint
  "A checker using php-sqllint.
See URL `http://cweiske.de/php-sqllint.htm'."
  :command ("php-sqllint" "-r" "emacs"  source)
  :error-patterns  ((error (or "None" line) "." (or "None" column) ":Error:" (message))
                    (warning (or "None" line) "." (or "None" column) ":Warning:" (message))
                    (info (or "None" line) "." (or "None" column) ":Info:" (message)))
  :modes (
          plsql-mode
          sql-mode
))

(add-to-list 'flycheck-checkers 'php-sqllint)

(provide 'flycheck-php-sqllint)

;;; flycheck-php-sqllint.el ends here
;; (require 'flycheck-php-sqllint)
