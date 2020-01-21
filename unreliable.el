(defun perl-live-eval-defun () "eval between top most braces - may fail" (interactive)
  (save-excursion ((lambda (p) (perl-live-eval-region (+ 1 (car p)) (- (cdr p) 2))) (bounds-of-thing-at-point 'defun))))
(define-key cperl-mode-map "\C-\M-z" 'perl-live-eval-defun)
