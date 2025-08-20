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
# A176222 sequence 
-/


namespace Sequence

@[OEIS := A176222, offset := 3, derive := true, maxIndex := 100]
def A176222 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((x % 2) + loop (λ (x y : ℤ) ↦ x + y) x x)

end Sequence

