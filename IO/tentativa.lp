/* Linear Programming model based on the linked list diagrams */
/* Incorporating four types of constraints/cuts */

Maximize
  value: x1_2 + x1_3 + x2_4 + x3_4 + x4_5 + x4_6 + x5_7 + x6_7 + x7_8 + x7_9

Subject To
  /* Type 1: Flow conservation constraints */
  node1_out: x1_2 + x1_3 = 100
  node2_flow: x1_2 = x2_4
  node3_flow: x1_3 = x3_4
  node4_flow: x2_4 + x3_4 = x4_5 + x4_6
  node5_flow: x4_5 = x5_7
  node6_flow: x4_6 = x6_7
  node7_flow: x5_7 + x6_7 = x7_8 + x7_9

  /* Type 2: Capacity constraints */
  cap1_2: x1_2 <= 50
  cap1_3: x1_3 <= 50
  cap2_4: x2_4 <= 25
  cap3_4: x3_4 <= 25
  cap4_5: x4_5 <= 25
  cap4_6: x4_6 <= 25
  cap5_7: x5_7 <= 12.5
  cap6_7: x6_7 <= 12.5
  cap7_8: x7_8 <= 12.5
  cap7_9: x7_9 <= 12.5

  /* Type 3: Valid inequalities (cuts) to tighten the formulation */
  cut_path1: x1_2 + x2_4 + x4_5 + x5_7 + x7_8 <= 100
  cut_path2: x1_2 + x2_4 + x4_5 + x5_7 + x7_9 <= 100
  cut_path3: x1_2 + x2_4 + x4_6 + x6_7 + x7_8 <= 100
  cut_path4: x1_2 + x2_4 + x4_6 + x6_7 + x7_9 <= 100
  cut_path5: x1_3 + x3_4 + x4_5 + x5_7 + x7_8 <= 100
  cut_path6: x1_3 + x3_4 + x4_5 + x5_7 + x7_9 <= 100
  cut_path7: x1_3 + x3_4 + x4_6 + x6_7 + x7_8 <= 100
  cut_path8: x1_3 + x3_4 + x4_6 + x6_7 + x7_9 <= 100

  /* Type 4: Symmetry breaking constraints/structural requirements */
  struct1: x1_2 - x1_3 <= 25
  struct2: x4_5 - x4_6 <= 12.5
  struct3: x7_8 - x7_9 <= 6.25
  struct4: x1_2 + x2_4 >= 25

Bounds
  0 <= x1_2 <= 100
  0 <= x1_3 <= 100
  0 <= x2_4 <= 50
  0 <= x3_4 <= 50
  0 <= x4_5 <= 50
  0 <= x4_6 <= 50
  0 <= x5_7 <= 25
  0 <= x6_7 <= 25
  0 <= x7_8 <= 25
  0 <= x7_9 <= 25

End