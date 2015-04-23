(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)

(defvar my-packages '(projectile
		      clojure-mode
		      cider))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

