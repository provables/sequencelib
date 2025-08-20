/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A140858 sequence 
-/


namespace Sequence

@[OEIS := A140858, offset := 1, derive := true, maxIndex := 13]
def A140858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 + loop2 (λ (_x y : ℤ) ↦ 2 - y) (λ (x _y : ℤ) ↦ x) (x / 2) 1 2) + x) / 2)

end Sequence

