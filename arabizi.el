;;; arabizi.el --- Quail package for Arabizi style Arabic input -*- lexical-binding: t -*-

;; Author: Josh Bax (joshbax189@gmail.com)
;; Maintainer: Josh Bax
;; Version: 0.0.1
;; Package-Requires: ((emacs "29"))
;; Homepage: https://github.com/joshbax189/arabizi
;; Keywords: input-method, arabic

;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:

;; See https://en.wikipedia.org/wiki/Arabic_chat_alphabet.

;;; Code:

;; M-x eval-buffer to load the package.
;; Then M-x set-input-method and select arabizi to use it.
;; Do eval-buffer again each time you make a change.

(require 'quail)

;; see documentation for useful info
(quail-define-package
 "arabizi" "Arabic" " ف" t
 "Sketch of Arabizi transliteration.
  See https://en.wikipedia.org/wiki/Arabic_chat_alphabet."
 nil nil nil t t nil nil nil nil nil t)

;; see documentation for full description of rules
(quail-define-rules
;; ? indicates a character, make sure there is only a single character otherwise you will get "invalid read syntax error"
 ("$" ?ش)
 ;; A string result lets the user choose any of the characters as the completion
 ;; You could probably rearrange the choices to make the more likely one first
 ("2" "أإآءئؤ")
 ;; You can also add multiple rules with the same trigger to give a choice
 ("2" ?ق)
 ("3" ?ع)
 ("3'" ?غ)
 ("5" ?خ)
 ("6" ?ط)
 ("6'" ?ظ)
 ("7" ?ح)
 ("7'" ?خ)
 ("8" ?غ)
 ("8" ?ق)
 ("9" ?ص)
 ("9" ?ق)
 ("9'" ?ض)
 ("D" ?ض)
 ("T" ?ط)
 ;; vectors also provide multiple choices
 ("a" ["ي" "ى"])
 ("a" ?ا)
 ("a" ?ة)
 ("a" ?ه)
 ("ah" ?ه)
 ("ai" ["ي" "ى"])
 ("at" ?ة)
 ("b" ?ب)
 ("ch" ?ش)
 ("ch" ?ك)
 ("d" ?د)
 ("d" ?ذ)
 ("d" ?ض)
 ("dh" ?ذ)
 ("dh" ?ض)
 ("dh" ?ظ)
 ("dj" ?ج)
 ("e" ?ا)
 ("e" ?ة)
 ("e" ?ه)
 ("ee" ["ي" "ى"])
 ("eh" ?ة)
 ("eh" ?ه)
 ("ei" ["ي" "ى"])
 ("et" ?ة)
 ("f" ?ف)
 ("g" ?ج)
 ("g" ?ق)
 ("g" ?ك)
 ("gh" ?غ)
 ("h" ?ح)
 ("h" ?ه)
 ("i" ["ي" "ى"])
 ("j" ?ج)
 ("k" ?ك)
 ("kh" ?خ)
 ("l" ?ل)
 ("m" ?م)
 ("n" ?ن)
 ("o" ?و)
 ("oo" ?و)
 ("ou" ?و)
 ("q" ?ق)
 ("r" ?ر)
 ("s" ?ث)
 ("s" ?س)
 ("s" ?ص)
 ("sh" ?ش)
 ("t" ?ت)
 ("t" ?ث)
 ("t" ?ط)
 ("th" ?ث)
 ("th" ?ذ)
 ("th" ?ظ)
 ("u" ?و)
 ("v" ?ف)
 ("w" ?و)
 ("x" ?ش)
 ("y" ["ي" "ى"])
 ("z" ?ذ)
 ("z" ?ز)
 ("z" ?ظ)
 ("è" ?ا)
 ("é" ["ي" "ى"])
 ("é" ?ة)
 ("é" ?ه))

(provide 'arabizi)

;;; arabizi.el ends here
