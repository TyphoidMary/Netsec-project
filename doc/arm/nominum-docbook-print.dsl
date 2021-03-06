<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY dbstyle SYSTEM "print/docbook.dsl" CDATA DSSSL>
]>


<style-sheet>
<style-specification use="docbook">
<style-specification-body>

<!-- ;; your stuff goes here... -->

(define %generate-book-titlepage% #t)

(define %section-autolabel%
  ;; REFENTRY section-autolabel
  ;; PURP Are sections enumerated?
  ;; DESC
  ;; If true, unlabeled sections will be enumerated.
  ;; /DESC
  ;; AUTHOR N/A
  ;; /REFENTRY
  #t)

;; Margins around cell contents
;; (define %cals-cell-before-row-margin% 20pt)
;; (define %cals-cell-after-row-margin% 20pt)

;; seems to be a bug in JadeTeX -- we get a wierd indent on table
;;   cells for the first line only.  This is a workaround.
;; Adam Di Carlo, adam@onshore.com
(define %cals-cell-before-column-margin% 5pt)
(define %cals-cell-after-column-margin% 5pt)

;; Inheritable start and end indent for cell contents
(define %cals-cell-content-start-indent% 5pt)
(define %cals-cell-content-end-indent% 5pt)


</style-specification-body>
</style-specification>
<external-specification id="docbook" document="dbstyle">
</style-sheet>
