import Sequencelib.Meta.OEISRepo

open Lean

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
  dbg_trace repr (toOEISRepoItem (← getEnv) "\
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

/--
info: Except.ok { tag := "A211706",
  description := "Binary expansion of Sum_{n>=1} A006218(n)*2^(-n).",
  offset := 2,
  keywords := #["nonn", "cons", "base"],
  values := #[1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1,
              0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0,
              0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0] }
-/
#guard_msgs in
run_elab do
  dbg_trace repr (toOEISRepoItem (← getEnv) r#"\
%I A211706 #13 Aug 01 2020 11:36:14
%S A211706 1,1,0,0,1,1,0,1,1,0,1,0,1,0,0,0,0,0,1,0,1,1,1,1,1,1,0,0,1,1,1,1,0,0,
%T A211706 1,0,0,0,0,1,1,1,1,1,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,1,1,0,1,1,1,1,1,1,
%U A211706 1,0,0,1,1,0,1,1,1,0,0,1,0,1,1,0,0,0,1,0,1,0,0,1,0,1,0,0,0,0,0
%N A211706 Binary expansion of Sum_{n>=1} A006218(n)*2^(-n).
%C A211706 With offset 1 this is the binary expansion of the Erdős-Borwein constant (A065442). Erdős (1948) proved that this constant is irrational by showing that its binary expansion has arbitrarily long strings of zeros. - _Amiram Eldar_, Aug 01 2020
%H A211706 David H. Bailey and Richard E. Crandall, <a href="https://projecteuclid.org/euclid.em/1057864662">Random generators and normal numbers</a>, Experimental Mathematics, Vol. 11, No. 4 (2002), pp. 527-546. See p. 540.
%H A211706 Paul Erdős, <a href="https://users.renyi.hu/~p_erdos/1948-04.pdf">On Arithmetical Properties of Lambert Series</a>, J. Indian Math. Soc., Vol. 12 (1948), 63-66.
%e A211706 11.00110110101000001011111100111100100001...
%t A211706 f[n_, m_] := Sum[Floor[n/k], {k, 1, m}]
%t A211706 t = Table[f[n, 100], {n, 1, 4000}] ;
%t A211706 N[Sum[t[[n]]/2^n, {n, 1, 4000}], 100]
%t A211706 RealDigits[%, 10]  (* A211705 *)
%t A211706 RealDigits[%%, 2]  (* A211706 *)
%Y A211706 Cf. A006218, A065442, A211701, A211705 (decimal representation)
%K A211706 nonn,cons,base
%O A211706 2
%A A211706 _Clark Kimberling_, Apr 19 2012
%E A211706 Offset changed from _Bruno Berselli_, May 14 2012
"#)

/--
info: Except.ok { tag := "A229952",
  description := "Decimal expansion of m_e*c in SI units (kg*m/s), where m_e is the electron mass and c is the speed of light in vacuum.",
  offset := -21,
  keywords := #["nonn", "cons"],
  values := #[2, 7, 3, 0, 9, 2, 4, 2, 9] }
-/
#guard_msgs in
run_elab do
  dbg_trace repr (toOEISRepoItem (← getEnv) r#"\
%I A229952 #41 Mar 22 2023 12:09:57
%S A229952 2,7,3,0,9,2,4,2,9
%N A229952 Decimal expansion of m_e*c in SI units (kg*m/s), where m_e is the electron mass and c is the speed of light in vacuum.
%C A229952 The product m_e*c is also the denominator in the formula of the electron Compton wavelength: W_C = h/(m_e*c), where h is the Planck constant.
%C A229952 It appears that m_e*c is also the main constant in the formula of the relativistic momentum of the electron, if such formula is written as the product of a dimensionless factor and a constant with the same dimensions as the relativistic momentum. For instance, here we write p = [1/(c^2/v^2 - 1)^(1/2)]*m_e*c instead of the standard formula p = [1/(1 - v^2/c^2)^(1/2)]*m_e*v, where v is the speed of the electron. A trigonometric version of the formula is p = tan(x)*m_e*c hence tan(x) = p/(m_e*c) assuming that sin(x) = v/c and 0 < x < Pi/2. Also p = sinh(X)*m_e*c assuming that sin(x) = tanh(X) = v/c.
%C A229952 Also m_e*c is the main constant in the formula of the relativistic momentum of the electron, if such formula is written as p = [(E^2/E_0^2 - 1)^(1/2)]*m_e*c where E is the relativistic energy and E_0 is the energy at rest.
%C A229952 Also m_e*c is equivalent to the momentum of a photon whose energy is the same as the rest energy of an electron.
%C A229952 Also m_e*c is equivalent to the relativistic momentum of an electron whose velocity is equal to c/sqrt(2). For more information see A229962.
%F A229952 m_e*c = E_0/c = A081801 * A003678 = A081816 / A003678.
%e A229952 2.73092429... * 10^-22 [kilogram * meter / second].
%Y A229952 Cf. A003676, A003678, A081801, A081816, A229962, A230436, A230844, A231350.
%K A229952 nonn,cons
%O A229952 -21,1
%A A229952 _Omar E. Pol_, Nov 12 2013
"#)
