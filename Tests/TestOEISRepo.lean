import Sequencelib.Meta.OEISRepo

open Lean OEISRepoSyntax

/--
info: Except.ok { tag := "A382995",
  description := "Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = Sum_{d|n} phi(n/d) * (-k)^(d-1).",
  offset := 1,
  keywords := #["sign", "tabl"],
  values := #[1, 1, 0, 1, -1, 3, 1, -2, 6, 0, 1, -3, 11, -8, 5, 1, -4, 18, -28, 20, 0, 1, -5, 27, -66, 85, -30, 7, 1,
              -6, 38, -128, 260, -238, 70, 0, 1, -7, 51, -220, 629, -1014, 735, -136, 9, 1, -8, 66, -348, 1300, -3108,
              4102, -2216, 270, 0, 1, -9, 83, -518, 2405, -7750, 15631, -16452, 6585, -500, 11] }
-/
#guard_msgs in
run_elab do
  dbg_trace repr (toOEISRepoData (← getEnv) "\
%I A382995 #15 Apr 12 2025 09:49:37
%S A382995 1,1,0,1,-1,3,1,-2,6,0,1,-3,11,-8,5,1,-4,18,-28,20,0,1,-5,27,-66,85,
%T A382995 -30,7,1,-6,38,-128,260,-238,70,0,1,-7,51,-220,629,-1014,735,-136,9,1,
%U A382995 -8,66,-348,1300,-3108,4102,-2216,270,0,1,-9,83,-518,2405,-7750,15631,-16452,6585,-500,11
%N A382995 Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = Sum_{d|n} phi(n/d) * (-k)^(d-1).
%F A382995 A(n,k) = (1/k) * A382994(n,k).
%K A382995 sign,tabl
%O A382995 1,6
%A A382995 _Seiichi Manyama_, Apr 12 2025
")
