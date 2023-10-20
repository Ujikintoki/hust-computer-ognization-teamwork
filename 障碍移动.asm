.text
j main_function

goldcoin_start:
addi s3, zero, 1
addi s5, zero, 8
addi s0, zero, 1# 金币位置初始化
addi s1, zero, 1# 金币位置初始化
addi s2, zero, 1# 金币位置初始化
addi s4, zero, 0
goldcoin0:
sw s0, 32(zero)    # 放置金币
sw s0, 60(zero)
sw s0, 80(zero)
addi   a1,zero,34  # 显示金币
ecall
addi s9, zero, 1
sll s0, s0, s9   # 金币位置左移一格
addi s4, s4, 1
bne s4, s5, goldcoin0
addi s4, zero, 0
#等于时继续
goldcoin1:
sw s0, 32(zero)    # 放置金币
sw s0, 60(zero)
sw s0, 80(zero)
sw s1, 16(zero)
sw s1, 48(zero)
sw s1, 128(zero)
addi   a1,zero,34  # 显示金币
ecall
addi s9, zero, 1
sll s0, s0, s9   # 金币位置左移一格
sll s1, s1, s9   # 金币位置左移一格
addi s4, s4, 1
bne s4, s5, goldcoin1
addi s4, zero, 0
goldcoin2:
sw s0, 32(zero)    # 放置金币
sw s0, 60(zero)
sw s0, 80(zero)
sw s1, 16(zero)
sw s1, 48(zero)
sw s1, 96(zero)
sw s2, 8(zero)
sw s2, 40(zero)
sw s2, 64(zero)
addi   a1,zero,34  # 显示金币
ecall
addi s9, zero, 1
sll s0, s0, s9   # 金币位置左移一格
sll s1, s1, s9   # 金币位置左移一格
sll s2, s2, s9   # 金币位置左移一格
addi s4, s4, 1
bne s4, s5, goldcoin2
addi s4, zero, 0

addi s0, s0, 1   # 金币新增
hhhh:
sw s0, 32(zero)    # 放置金币
sw s0, 60(zero)
sw s0, 80(zero)
sw s1, 16(zero)
sw s1, 48(zero)
sw s1, 96(zero)
sw s2, 8(zero)
sw s2, 40(zero)
sw s2, 64(zero)
addi   a1,zero,34  # 显示金币
ecall
addi s9, zero, 1
sll s0, s0, s9   # 金币位置左移一格
sll s1, s1, s9   # 金币位置左移一格
sll s2, s2, s9   # 金币位置左移一格
addi s4, s4, 1
bne s4, s5, hhhh
addi s4, zero, 0
addi s1, s1, 1  # 金币新增
iiii:
sw s0, 32(zero)    # 放置金币
sw s0, 60(zero)
sw s0, 80(zero)
sw s1, 16(zero)
sw s1, 48(zero)
sw s1, 96(zero)
sw s2, 8(zero)
sw s2, 40(zero)
sw s2, 64(zero)
addi   a1,zero,34  # 显示金币
ecall
addi s9, zero, 1
sll s0, s0, s9   # 金币位置左移一格
sll s1, s1, s9   # 金币位置左移一格
sll s2, s2, s9   # 金币位置左移一格
addi s4, s4, 1
bne s4, s5, iiii
addi s4, zero, 0
addi s2, s2, 1  # 金币新增
jjjj:
sw s0, 32(zero)    # 放置金币
sw s0, 60(zero)
sw s0, 80(zero)
sw s1, 16(zero)
sw s1, 48(zero)
sw s1, 96(zero)
sw s2, 8(zero)
sw s2, 40(zero)
sw s2, 64(zero)
addi   a1,zero,34  # 显示金币
ecall
addi s9, zero, 1
sll s0, s0, s9   # 金币位置左移一格
sll s1, s1, s9   # 金币位置左移一格
sll s2, s2, s9   # 金币位置左移一格
addi s4, s4, 1
bne s4, s5, jjjj
addi s4, zero, 0
addi s0, s0, 1  # 金币新增
j hhhh

finish:
addi s3, zero, 1  #游戏成功

main_function:

nop_cycle:
nop
nop
nop
nop
nop
j nop_cycle
