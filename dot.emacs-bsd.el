;(when (file-exists-p "~/.emacs_files/elisp_local/scel")
;  (when macosx-p
;    ;; Assume we're on a mac with SuperCollider in the normal spot
;    (when (file-exists
;# -*- coding: utf-8 -*-
;(when (string-equal my-system-is "GIG")
; (message "do-something")
;)
;;;; Template. ----------------------------------------------------------------
;(setq recentf-save-file (format "%s%s%s" emacs-qwa-path ".emacs.d/_recentf_" system-name))
;(setq load-path (append load-path (list (concat emacs-lib-path "bladir"))))
;(require 'bla) ; lib/bladir/bla
;(load (concat emacs-lib-path "bladir/bla"))
;; (setq load-path (append load-path (list (concat emacs-lib-path "dot"))))
;; (setq emacs-pkg-path "/home/kys/bin/") ; absolute-path
;; (setq emacs-lib-path "~/lib/") ; relative-path
;; (setq emacs-qwa-path "/data/kys/") ; absolute-path
;; (setq emacs-home-path "~/")) ; relateive path home
;; ex. (setq w3m-home-page (concat "file://" emacs-qwa-path ".w3m/bookmark.html"))

;;;; ----------------------------------------------------------------------
;;;; title: markdown-mode
;;;; from: init-markdown  to. ~/lib/net/
;; refer. i.markdown == dot/init-markdown.el
;; Usage. ~/pkg/emacs/markdown_mode.org
;;
;; check-path lib.  (locate-library "magit")
;; execk-path exec. (executable-find "git")
;
(defvar user-name "KYS") ;(defvar user "kys")
(setq user-name "KYS")
(setq user-full-name "GYS")
;(setq user-login-name "kys")
(setq user-mail-address "qesdes@nowhere.com")
;;;; ---------------------------------------------------------------------------
;(require 'firefox-controller) ;(load (concat emacs-lib-path "moz/firefox-controller"))
;;;; ----> comes from: ~/.emacs <-----
;;;; insert-system-naem, insert-system-type, system-types-is-darwin, system-type-is-gnu
;;;; system-type-is-ms, system-is-gui, system-is-mac, system-is-gig, system-is-mdc,
;;;; system-is-alex, system-is-job, system-is-test, system-is-zion
;;;; emacs-pkg-path, emacs-qwa-path, emacs-lib-path

(setq diary-file (concat emacs-home-path "org/diary.org"))
;(setq find-program "/usr/bin/find")
;(setq grep-program "/usr/bin/grep")
;(setq w3m-command "/opt/local/bin/w3m")

;(getenv "Path")))
;(load (concat emacs-lib-path "dot/init-path"))

(setq load-path (append load-path (list (concat emacs-lib-path "net"))))
(setq load-path (append load-path (list (concat emacs-lib-path "dot"))))
;(setq load-path (append load-path (list (concat emacs-lib-path "hangul"))))
;(setq load-path (append load-path (list (concat emacs-lib-path "tmp"))))

;(load-library (concat emacs-lib-path "net/dos-indent")) ;(require 'dos-indent)
;(load-library (concat emacs-lib-path "net/dos"))

;;; under test
(setq load-path (append load-path (list (concat emacs-lib-path "unicode"))))

;(load (concat emacs-lib-path "dot/init-env.el"))
(load (concat emacs-lib-path "dot/init-bookmark")) ;C-x r b ; bookmark
;;(load (concat emacs-lib-path "dot/init-font"))
(load (concat emacs-lib-path "dot/init-font2"))
(load (concat emacs-lib-path "dot/init-encoding"))
;;(load (concat emacs-lib-path "dot/mule-conf")) ; Hangul for Postgres , pgsql -> init-sql.el
;;;(require 'hangul)

(load (concat emacs-lib-path "dot/init-org.el"))

(defun my-load-org-html5present () "org export to html5 file" (interactive)
  (load (concat emacs-lib-path "dot/init-org-present"))) ; system-name
;(my-load-org-html5present) ; Export ~.org to ~.html 

;;;(load (concat emacs-lib-path "dot/init-org-time"))
;(load (concat emacs-lib-path "dot/init-org-autocom"))
;;(load (concat emacs-lib-path "dot/init-org-r"))
;(load (concat emacs-lib-path "dot/init-org-appt")) ; notify notification
;(load (concat emacs-lib-path "dot/init-org-rss")) ; org-feed-update-{all}
;(load (concat emacs-lib-path "dot/init-auto-indent"))
(setq initial-major-mode 'org-mode)

;(load (concat emacs-lib-path "dot/init-yasnippet"))
(load (concat emacs-lib-path "dot/init-dired"))
(load (concat emacs-lib-path "net/dired_7z")) ; using 7z not gzip or compress
(load (concat emacs-lib-path "dot/init-sql")) ; i.sql > M-x sql-my sql-pg
;;(load-library (concat emacs-lib-path "dot/init-pgsql"))
;;(load-library (concat emacs-lib-path "dot/init-oracle"))
;;(load-library (concat emacs-lib-path "dot/init-mysql"))
(load (concat emacs-lib-path "dot/init-misc"))

(load (concat emacs-lib-path "dot/init-wget"))
;(load (concat emacs-lib-path "dot/init-ruby"))
;(load (concat emacs-lib-path "dot/init-dictionary"))
;;(load (concat emacs-lib-path "dot/init-buffers"))
(load (concat emacs-lib-path "dot/init-tree")) ; neotree / imenutree / ztree
(load (concat emacs-lib-path "dot/init-w3m")) ; (setq w3m-home-page "file:///data/kys/.w3m/bookmark.html")

;;(load(concat emacs-lib-path "dot/init-w3m-emacs"))
;;(load (concat emacs-lib-path "dot/init-company"))
;;;; ----------------------------------------------------------------------
;;;; i.web-mode > nxhtml, web-mode, mmm-mode
(defun my-load-html () "load html-php-jsp" (interactive)
  (load (concat emacs-lib-path "dot/init-web-mode")))
;(my-load-html) ; i.web-mode > nxhtml, web-mode, mmm-mode

; (if (system-is-gui) (load-library (concat emacs-lib-path "workgroups2/workgroups2.el")));iswitchb
(load (concat emacs-lib-path "dot/init-twit"))
;(load-library (concat emacs-lib-path "dot/init-emms"))
;(load-library (concat emacs-lib-path "dot/init-gnus.el"))
(load (concat emacs-lib-path "dot/init-misc-defun")) ;; iswitchb is obsolete

(load (concat emacs-lib-path "dot/init-mew.el"))
(load (concat emacs-lib-path "org_add/org-mew")) ; copy org-capture with mew-title to the org title
;(load (concat emacs-lib-path "net/footnotes"))

;(load (concat emacs-lib-path "dot/init-menu"))
;(load (concat emacs-lib-path "dot/init-csharp.el")) ; powershell included
(load (concat emacs-lib-path "net/window-numbering"))
(window-numbering-mode 1); key -> "\C-cg0" [n]

;;;; my-load-git = git+git-emacs+git-modes+magit
(defun my-load-git () "load git with magit" (interactive)
  (load (concat emacs-lib-path "dot/init-magit")))
;(my-load-git)

;(load (concat emacs-lib-path "dot/init-cal"))
;(load (concat emacs-lib-path "dot/init-calfw"))
;(load-library (concat emacs-lib-path "dot/init-javadoc"))
;(load (concat emacs-lib-path "dot/init-helm.el")) ; i.key helm section

;(load (concat emacs-lib-path "dot/init-ledger"))
(load (concat emacs-lib-path "dot/init-keys"))
;(load (concat emacs-lib-path "dot/init-shell"))
;(load (concat emacs-lib-path "dot/init-sr-speedbar"))
;(load (concat emacs-lib-path "dot/init-speedbar"))
;(load (concat emacs-lib-path "dot/init-msys")) ;; careful conflict with find and grep

;;(load (concat emacs-lib-path "dot/init-js2"))
;(load (concat emacs-lib-path "dot/init-js3"))
;;(load (concat emacs-lib-path "dot/init-css-xah.el"))
;(load (concat emacs-lib-path "dot/init-css")) ;color -> i.org, i.screen (lisp-mode)
;;;;;--> (add-hook 'css-mode-hook 'css-color-turn-on-in-buffer)

(load (concat emacs-lib-path "dot/init-multi-lang.el")) ; i.hanyu v.2 ; alt+shift+space
(ffap-bindings) ;;find-file-at-point, smarter C-x C-f when point on path or URL
;(icomplete-mode t) ;; with auto complete (list generate)
(put 'suspend-frame 'disabled t)
(load (concat emacs-lib-path "dot/init-screen")) ; font; my-set-jellybeans-colors -> default-frame-alist
;(load (concat emacs-lib-path "dot/init-firefox.el")) ; firefox integration
;(load (concat emacs-lib-path "dot/init-popwin.el"))
;(load (concat emacs-lib-path "dot/init-evil.el"))
;(load (concat emacs-lib-path "dot/init-elscreen.min")) ; Conflict->epresent-run
;(load (concat emacs-lib-path "dot/dlgopen")) ; "\C-c\C-f" 'dlgopen-open-files
(load (concat emacs-lib-path "dot/init-recentf"))

;(load (concat emacs-lib-path "dot/init-server.el")) ;; it hash it's own key binding
(defun my-server-start () "server-start" (interactive)
  (load (concat emacs-lib-path "dot/init-server.el")))
;(add-hook 'emacs-startup-hook (lambda () (bury-buffer "*scratch*")))
(my-server-start)

(load (concat emacs-lib-path "dot/init-persp")) ; perspective-mode -> C-x x <- change
;;(load (concat emacs-lib-path "dot/init-tabbar")) ; tabbar

;(load (concat emacs-lib-path "dot/init-modeline"))
(load (concat emacs-lib-path "dot/init-powerline"))
;(load (concat emacs-lib-path "dot/init-escreen")) ; added -> i.misc (escreen-tab-mode-line-update)

;(load (concat emacs-lib-path "dot/init-markdown"))
(defun my-load-markdown () "Loading ... markdown-mode ..." (interactive)
  (load (concat emacs-lib-path "dot/init-markdown")))
;(my-load-markdown)

(setq max-specpdl-size 50000) ; 30000
