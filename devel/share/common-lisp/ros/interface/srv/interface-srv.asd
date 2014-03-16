
(cl:in-package :asdf)

(defsystem "interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "converter" :depends-on ("_package_converter"))
    (:file "_package_converter" :depends-on ("_package"))
    (:file "parameter" :depends-on ("_package_parameter"))
    (:file "_package_parameter" :depends-on ("_package"))
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
  ))