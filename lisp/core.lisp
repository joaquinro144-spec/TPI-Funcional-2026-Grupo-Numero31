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
(LIST 'EN-ROJO  "CAMBIAR-A-VERDE"))
((AND(EQ COLOR-ACTUAL 'EN-VERDE)(EQ CAMBIAR-A 'AMARILLO))
(LIST 'EN-VERDE "CAMBIAR-A-AMARILLO"))
((AND(EQ COLOR-ACTUAL 'EN-AMARILLO) (EQ CAMBIAR-A 'ROJO))
(LIST 'EN-AMARILLO "CAMBIAR-A-ROJO"))
(T (LIST COLOR-ACTUAL 'ACCION-POR-DEFECTO ))
);FIN-COND
);FIN-DEFUN

;; =========================================================================
;; FUNCIÓN: TIMER
;; NATURALEZA: Pura (Ante un mismo timestamp, siempre retorna el mismo símbolo)
;; ESTRATEGIA: Lógica Matemática / Condicional Estructural (Predicado Compuesto)
;; IMPACTO EN MEMORIA: No Destructiva (No altera estructuras ni variables globales)
;; =========================================================================
(DEFUN TIMER (TIMESTAMP)
(LET ((SEGUNDO-CICLO (MOD TIMESTAMP 216)))
(COND
((< SEGUNDO-CICLO 90)'EN-ROJO)
((< SEGUNDO-CICLO 96)'EN-AMARILLO)
(T 'EN-VERDE)
);FIN-COND
);FIN-LET
);FIN-DEFUN


[ 0s ----------------------- 89s | 90s --- 95s | 96s ----------------------- 215s ]
|<---------- EN-ROJO ----------->|<--AMARILLO->|<------------ EN-VERDE ---------->|
|         (90 segundos)          | (6 segundos)|          (120 segundos)          |