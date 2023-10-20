.text
j main_function


#开始游戏
game_start:
bne s2, zero, not_first #多次点击开始没用
addi s2, zero, 1

not_first:
uret


#小车下移
interrupt_down:

#开始才能动
beq s2, zero, not_start1

#走到边界
addi s8, zero, 116
beq s1, s8, border

sw zero, 0(s1)       #清空当前行
addi s1, s1, 4    #小车行数加一
sw s0, 0(s1)      #数据存入新行
addi a1, zero, 34    
ecall

not_start1:
uret


#小车上移
interrupt_up:

#开始才能动
beq s2, zero, not_start2

#走到边界
addi s8, zero, 8
beq s1, s8, border

sw zero, 0(s1)
addi t1, zero, 4     
sub s1, s1, t1
sw s0, 0(s1) 
addi a1, zero, 34  
ecall

not_start2:
uret

#边界，发出警告
border: 
addi a1, zero, 100 
ecall
uret


main_function:

addi s0, zero, 0x7ff  
addi s8, zero, 16
sll  s0, s0, s8     #初始X坐标
addi s1, zero, 64      #初始Y坐标

#道路布局
addi t6, zero, 0x400
addi s8, zero, 12
sll t6, t6, s8
ori t6, t6, 0x7ff
addi s8, zero, 8
sll t6, t6, s8
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
addi s8, zero, 20
sll t6, t6, s8
sw t6, 64(zero)

addi   a1,zero,34
ecall

nop_cycle:
nop
nop
nop
nop
nop
j nop_cycle