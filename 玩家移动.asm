.text
 j main_function


#��ʼ��Ϸ
game_start:
bne s2, zero, not_first #��ε����ʼû��
addi s2, zero, 1

not_first:
uret


#С������
interrupt_down:

#��ʼ���ܶ�
beq s2, zero, not_start1

#�ߵ��߽�
addi s8, zero, 116
beq s1, s8, border

sw zero, 0(s1)       #��յ�ǰ��
addi s1, s1, 4    #С��������һ
sw s0, 0(s1)      #���ݴ������С�
addi a0, zero, 34    
ecall

not_start1:
uret


#С������
interrupt_up:

#��ʼ���ܶ�
beq s2, zero, not_start2

#�ߵ��߽�?addi s8, zero, 8
beq s1, s8, border

sw zero, 0(s1)
addi t1, zero, 4     
sub s1, s1, t1
sw s0, 0(s1) 
addi a0, zero, 34  
ecall

not_start2:
uret

#�߽磬��������
border: 
addi a0, zero, 100 
ecall
uret


main_function:

addi s0, zero, 0x400  
slli  s0, s0, 21     #��ʼX����
addi s1, zero, 64      #��ʼY����

#��·����
addi t6, zero, 0xff
slli t6, t6, 8
ori t6, t6, 0xff

slli t6, t6, 8
ori t6, t6, 0xff

slli t6, t6, 8
ori t6, t6, 0xff

sw t6, 0(zero)

sw t6, 4(zero)

sw t6, 120(zero)

sw t6, 124(zero)

addi t6, zero, 0x0
sw t6, 8(zero)

sw t6, 12(zero)

sw t6, 16(zero)

sw t6, 20(zero)

sw t6, 24(zero)

sw t6, 28(zero)

sw t6, 32(zero)

sw t6, 36(zero)

sw t6, 40(zero)

sw t6, 44(zero)

sw t6, 48(zero)

sw t6, 52(zero)

sw t6, 56(zero)

sw t6, 60(zero)

sw t6, 68(zero)

sw t6, 72(zero)

sw t6, 76(zero)

sw t6, 80(zero)

sw t6, 84(zero)

sw t6, 88(zero)

sw t6, 92(zero)

sw t6, 96(zero)

sw t6, 100(zero)

sw t6, 104(zero)

sw t6, 108(zero)

sw t6, 112(zero)

sw t6, 116(zero)

addi t6, zero, 0x400
slli t6, t6, 21

sw t6, 64(zero)

addi   a0,zero,34
ecall

nop_cycle:
nop
nop
nop
nop
nop
j nop_cycle
