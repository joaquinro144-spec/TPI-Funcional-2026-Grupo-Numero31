;; =====================================================================
;; Requerimiento 1: Estados de Transición
;;
;; Implemente la función transicion que modele el cambio de estados del semáforo:
;; 
;; Especificación:
;; - Entrada: color-actual (símbolo: en-rojo, en-amarillo, en-ver de) y cambiar-a
;;   (símbolo del color destino: rojo, amarillo, verde)
;; - Salida: devuelve una lista con el estado y una acción a realizar, esta última como
;;   literal "cambiar-a-<color>".
;; - Comportamiento: Por defecto, retorna color actual y 'accion-por-defecto si la
;;   transición no es válida
;; 
;; Ejemplo esperado:
;; (transicion 'en-rojo 'verde) -> ('en-rojo "cambiar-a-verde")
;; =====================================================================



 (DEFUN TRANSICION (COLOR-ACTUAL CAMBIAR-A)
(COND
((AND(EQ COLOR-ACTUAL 'EN-ROJO ) (EQ CAMBIAR-A 'VERDE))
(LIST 'EN-VERDE  "CAMBIAR-A-VERDE"))
((AND(EQ COLOR-ACTUAL 'EN-VERDE)(EQ CAMBIAR-A 'AMARILLO))
(LIST 'EN-AMARILLO "CAMBIAR-A-AMARILLO"))
((AND(EQ COLOR-ACTUAL 'EN-AMARILLO) (EQ CAMBIAR-A 'ROJO))
(LIST 'EN-ROJO "CAMBIAR-A-ROJO"))
(T (LIST COLOR-ACTUAL 'ACCION-POR-DEFECTO ))))
