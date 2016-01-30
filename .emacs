;;;; c:/Users/kys/AppData/Roaming/.emacs D:/home/.emacs
;;;; -- define variable and template
;; <insert-system-..> insert-system-name, insert-system-type
;; <system-type-..  > system-type-is-darwin, system-type-is-gnu, system-type-is-ms
;; <system-is-..    > system-is-alex, system-is-mac, system-is-gig, system-is-mdc, system-is-job
;; <check-GUI       > system-is-gui
;; Get current system's name; GIG / kysui-MacBook.local
;;
;; (defvar system-type-as-string (prin1-to-string system-type))
;; (defvar on_solaris    (string-match "usg-unix-v" system-type-as-string))
;; (cond (on_solaris (setenv "TEXINPUTS"
;;    ".:/usr/local/texlive/2011/texmf-dist/tex//:" "$HOME/ghaliweekly/latex/styles//")))
(set-foreground-color "white") ; white
(set-background-color "black") ;gray10 black

(menu-bar-mode -1) ; -1 diable / 1 enable
(tool-bar-mode -1)
(scroll-bar-mode -1)

(defun insert-system-name()
  (interactive) "Get current system's name"
  (insert (format "%s" system-name)))
;; Get current system type; windows-nt / darwin
(defun insert-system-type()
  (interactive) "Get current system type"
  (insert (format "%s" system-type)))
;; Check if system is Darwin/Mac OS X
(defun system-type-is-darwin () ; t(mac)/nil(windows)
  (interactive) "Return true if system is darwin-based (Mac OS X)"
  (string-equal system-type "darwin"))
;; Check if system is FreeBSD/GNU/Linux
(defun system-type-is-gnu () ; t/nil
  (interactive) "Return true if system is GNU/Linux-based"
  (string-equal system-type "gnu/linux"))
;; Check if system is Windows

(defun system-type-is-ms () ; t/nil
  (interactive) "Return true if system is Windows"
  (string-equal window-system "w32")) ; w32 or windows-nt
;; Check GUI or Terminal Mode ; w32(windows), ns(mac) or (defvar has-x (equal window-system 'x)  "X is running.")
(defun system-is-gui () ; t/nil
  (interactive) "Return true if system is GUI or Terminal"
  (or (string-equal window-system "ns") (string-equal window-system "w32")))

;; Check if the system is MacBook at work ; t/nil
(defun system-is-mac ()
  (interactive) "Return true if the system we are running on is my Macbook"
  (or (string-equal system-name "kysui-MacBook.local")
      (string-equal system-name "mac")
      (string-equal system-name "mbl.kmylnxctx.com")
      (string-equal system-name "mac.kmylnxctx.com"))
      (defvar my-system-is "MAC")
      (defvar emacs-pkg-path "~/lib/")
      (defvar emacs-lib-path "~/lib/")
      (defvar emacs-qwa-path "~/_Qwa/"))

(defun system-is-gig ()
  (interactive) "Return true if the system we are running on is my GIG windows7"
  (or (string-equal system-name "GIG") (string-equal system-name "gig"))
      (defvar my-system-is "GIG")
      (defvar emacs-pkg-path "/home/kys/bin/") ; absolute-path
      (defvar emacs-lib-path "~/lib/") ; relative-path
      (defvar emacs-qwa-path "/data/kys/") ; absolute-path
      (defvar emacs-home-path "~/") ; relative-path
      (setq emacs-pkg-path "/home/kys/bin/") ; absolute-path
      (setq emacs-lib-path "~/lib/") ; relative-path
      (setq emacs-qwa-path "/data/kys/") ; absolute-path
      (setq emacs-home-path "~/")) ; relateive path home

(defun system-is-mdc ()
  (interactive) "Return true if the system we are running on is my MDC windows 2K"
  (or (string-equal system-name "MDC") (string-equal system-name "mdc"))
      (defvar my-system-is "MDC")
      (setq emacs-pkg-path "d:/temp/job/emacs/")
      (setq emacs-lib-path "d:/temp/job/emacs/lib")
      (setq emacs-qwa-path "d:/temp/job/home/"))

(defun system-is-alex ()
  (interactive) "Return true if the system we are running on is my FreeBSD"
  (or (string-equal system-name "alex") (string-equal system-name "alex.kmylxctx.com"))
  (defvar my-system-is "ALEX"))

(defun system-is-job ()
  (interactive) "Return true if the system we are running on is my JOB windows7 in works"
  (or (string-equal system-name "job") (string-equal system-name "job.kmylxctx.com"))
  (defvar my-system-is "JOB"))

(defun system-is-zion ()
  (interactive) "Return true if the system running on test"
  (or (string-equal system-name "ZION-T510IX") (string-equal system-name "zion"))
  (defvar my-system-is "ZION"))

;;;; expand-file-name filename &optional directory
;;;; converting a relative file name to an absolute one
;;;; Otherwise, the current buffer's value of default-directory is used
;(setq org-base-path (expand-file-name "~/smcho/time"))
;(setq org-default-notes-file-path (format "%s/%s" org-base-path "notes.org")
;      today-file-path             (format "%s/%s" org-base-path "2010.org"))

;;;; insert-system-naem, insert-system-type, system-types-is-darwin, system-type-is-gnu
;;;; system-type-is-ms, system-is-gui, system-is-mac, system-is-gig, system-is-mdc,
;;;; system-is-alex, system-is-job, system-is-test, system-is-zion
;;;; emacs-pkg-path, emacs-qwa-path, emacs-lib-path

(if (or (system-is-gig) (system-is-mdc))
   (load (concat emacs-lib-path "_site-lisp/dot.emacs-bsd.el"))
  (message "dot GIG loading..."))
