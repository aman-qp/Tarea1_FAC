    # ============================================================
# Programa: Operaciones con registros
# Version para Single-cycle y 5-stage con hazard detection
# ============================================================

.text
.globl _start

_start:
    li t0, 10000      # contador de iteraciones
    li t1, 1          # valor inicial
    li t2, 2          # segundo valor

loop:
    add t3, t1, t2    # operacion #1 entre registros
    sub t4, t3, t1    # operacion #2 entre registros
    and t5, t4, t2    # operacion #3 entre registros
    or  t6, t5, t1    # operacion #4 entre registros
    xor s0, t6, t2    # operacion #5 entre registros

    addi t1, t1, 1    # actualiza valor
    addi t0, t0, -1   # decrementa contador
    bne t0, zero, loop

end:
    nop
    nop
    nop