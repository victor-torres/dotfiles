(require 'package)

;; Melpa
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))

;; Emacs < 24 compatibility
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(which-key
    ledger-mode
    wakatime-mode
    auto-complete
    fill-column-indicator))

(mapc #'(lambda (package)
	 (unless (package-installed-p package)
	   (package-install package)))
     myPackages)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (elixir-mode which-key ledger-mode wakatime-mode))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (setq inhibit-startup-message t)

(ac-config-default)
(global-wakatime-mode t)
(global-auto-complete-mode t)
(which-key-mode t)
(ido-mode t)
(define-globalized-minor-mode
  global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)
(line-number-mode t)
(column-number-mode t)
(global-hl-line-mode -1)
(menu-bar-mode -1)

;; (elpy-enable)
;; (elpy-use-ipython)

;; (require 'py-autopep8)
;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

