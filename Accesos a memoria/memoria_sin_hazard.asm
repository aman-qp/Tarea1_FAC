# ============================================================
# Programa: Accesos a Memoria
# Procesador: 5-stage sin forwarding ni hazard detection
# Riesgos resueltos mediante software (NOPs manuales)
# NOPs por iteracion: 3 (RAW hazard) + 3 (control hazard) = 6
# ============================================================
.data
arr: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.text
.globl _start
_start:
    la   a0, arr
    li   t0, 100        # contador (para cuando llega a 1 = 99 iteraciones)
    li   t1, 1          # valor a escribir
    li   s5, 1          # valor de parada
    nop                 # limpiar pipeline antes del loop
    nop
    nop

loop:
    # --- ESCRITURA: 50 sw = 50 accesos de escritura a memoria ---
    sw   t1,  0(a0)     # acceso #1
    sw   t1,  4(a0)     # acceso #2
    sw   t1,  8(a0)     # acceso #3
    sw   t1, 12(a0)     # acceso #4
    sw   t1, 16(a0)     # acceso #5
    sw   t1, 20(a0)     # acceso #6
    sw   t1, 24(a0)     # acceso #7
    sw   t1, 28(a0)     # acceso #8
    sw   t1, 32(a0)     # acceso #9
    sw   t1, 36(a0)     # acceso #10
    sw   t1, 40(a0)     # acceso #11
    sw   t1, 44(a0)     # acceso #12
    sw   t1, 48(a0)     # acceso #13
    sw   t1, 52(a0)     # acceso #14
    sw   t1, 56(a0)     # acceso #15
    sw   t1, 60(a0)     # acceso #16
    sw   t1, 64(a0)     # acceso #17
    sw   t1, 68(a0)     # acceso #18
    sw   t1, 72(a0)     # acceso #19
    sw   t1, 76(a0)     # acceso #20
    sw   t1, 80(a0)     # acceso #21
    sw   t1, 84(a0)     # acceso #22
    sw   t1, 88(a0)     # acceso #23
    sw   t1, 92(a0)     # acceso #24
    sw   t1, 96(a0)     # acceso #25
    sw   t1, 100(a0)    # acceso #26
    sw   t1, 104(a0)    # acceso #27
    sw   t1, 108(a0)    # acceso #28
    sw   t1, 112(a0)    # acceso #29
    sw   t1, 116(a0)    # acceso #30
    sw   t1, 120(a0)    # acceso #31
    sw   t1, 124(a0)    # acceso #32
    sw   t1, 128(a0)    # acceso #33
    sw   t1, 132(a0)    # acceso #34
    sw   t1, 136(a0)    # acceso #35
    sw   t1, 140(a0)    # acceso #36
    sw   t1, 144(a0)    # acceso #37
    sw   t1, 148(a0)    # acceso #38
    sw   t1, 152(a0)    # acceso #39
    sw   t1, 156(a0)    # acceso #40
    sw   t1, 160(a0)    # acceso #41
    sw   t1, 164(a0)    # acceso #42
    sw   t1, 168(a0)    # acceso #43
    sw   t1, 172(a0)    # acceso #44
    sw   t1, 176(a0)    # acceso #45
    sw   t1, 180(a0)    # acceso #46
    sw   t1, 184(a0)    # acceso #47
    sw   t1, 188(a0)    # acceso #48
    sw   t1, 192(a0)    # acceso #49
    sw   t1, 196(a0)    # acceso #50

    # --- LECTURA: 50 lw = 50 accesos de lectura de memoria ---
    lw   t2,  0(a0)     # acceso #51
    lw   t3,  4(a0)     # acceso #52
    lw   t4,  8(a0)     # acceso #53
    lw   t5, 12(a0)     # acceso #54
    lw   t6, 16(a0)     # acceso #55
    lw   s0, 20(a0)     # acceso #56
    lw   s1, 24(a0)     # acceso #57
    lw   s2, 28(a0)     # acceso #58
    lw   s3, 32(a0)     # acceso #59
    lw   s4, 36(a0)     # acceso #60
    lw   t2, 40(a0)     # acceso #61
    lw   t3, 44(a0)     # acceso #62
    lw   t4, 48(a0)     # acceso #63
    lw   t5, 52(a0)     # acceso #64
    lw   t6, 56(a0)     # acceso #65
    lw   s0, 60(a0)     # acceso #66
    lw   s1, 64(a0)     # acceso #67
    lw   s2, 68(a0)     # acceso #68
    lw   s3, 72(a0)     # acceso #69
    lw   s4, 76(a0)     # acceso #70
    lw   t2, 80(a0)     # acceso #71
    lw   t3, 84(a0)     # acceso #72
    lw   t4, 88(a0)     # acceso #73
    lw   t5, 92(a0)     # acceso #74
    lw   t6, 96(a0)     # acceso #75
    lw   s0, 100(a0)    # acceso #76
    lw   s1, 104(a0)    # acceso #77
    lw   s2, 108(a0)    # acceso #78
    lw   s3, 112(a0)    # acceso #79
    lw   s4, 116(a0)    # acceso #80
    lw   t2, 120(a0)    # acceso #81
    lw   t3, 124(a0)    # acceso #82
    lw   t4, 128(a0)    # acceso #83
    lw   t5, 132(a0)    # acceso #84
    lw   t6, 136(a0)    # acceso #85
    lw   s0, 140(a0)    # acceso #86
    lw   s1, 144(a0)    # acceso #87
    lw   s2, 148(a0)    # acceso #88
    lw   s3, 152(a0)    # acceso #89
    lw   s4, 156(a0)    # acceso #90
    lw   t2, 160(a0)    # acceso #91
    lw   t3, 164(a0)    # acceso #92
    lw   t4, 168(a0)    # acceso #93
    lw   t5, 172(a0)    # acceso #94
    lw   t6, 176(a0)    # acceso #95
    lw   s0, 180(a0)    # acceso #96
    lw   s1, 184(a0)    # acceso #97
    lw   s2, 188(a0)    # acceso #98
    lw   s3, 192(a0)    # acceso #99
    lw   s4, 196(a0)    # acceso #100

    addi t1, t1, 1
    addi t0, t0, -1
    nop                 # NOP: evitar RAW hazard en t0 antes de bne
    nop
    nop
    bne  t0, s5, loop   # salta si t0 != 1
    nop                 # NOP: evitar riesgo de control tras salto
    nop
    nop
end:
    nop
    nop
    nop