# ============================================================
# Programa: Operaciones con registros
# Version para 5-stage sin hazard detection
# Se agregan NOPs para evitar riesgos
# ============================================================

.text
.globl _start

_start:
    li t0, 10001      # contador: permite hacer 10000 iteraciones
    li s5, 1          # condicion de parada
    li t1, 1          # valor inicial
    li t2, 2          # segundo valor

loop:
    add t3, t1, t2
    nop
    nop
    nop

    sub t4, t3, t1
    nop
    nop
    nop

    and t5, t4, t2
    nop
    nop
    nop

    or t6, t5, t1
    nop
    nop
    nop

    xor s0, t6, t2
    nop
    nop
    nop

    addi t1, t1, 1
    addi t0, t0, -1
    nop
    nop
    nop

    bne t0, s5, loop
    nop
    nop
    nop

end:
    nop
    nop
    nop