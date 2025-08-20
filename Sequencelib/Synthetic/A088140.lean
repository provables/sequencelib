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
# A088140 sequence 
-/


namespace Sequence

@[OEIS := A088140, offset := 2, derive := true, maxIndex := 78]
def A088140 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| if (loop (λ (x y : ℤ) ↦ x * y) x x % (2 + x)) ≤ 0 then 2 + x else 1

end Sequence

