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
# A101206 sequence 
-/


namespace Sequence

@[OEIS := A101206, offset := 2, derive := true, maxIndex := 5]
def A101206 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((1 + loop (λ (x y : ℤ) ↦ 2 + ((2 + y) * x)) x 1) / (2 + x))

end Sequence

