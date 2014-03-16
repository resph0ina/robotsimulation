
(cl:in-package :asdf)

(defsystem "interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "Value" :depends-on ("_package_Value"))
    (:file "_package_Value" :depends-on ("_package"))
  ))