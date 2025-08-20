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
# A318623 sequence 
-/


namespace Sequence

@[OEIS := A318623, offset := 1, derive := true, maxIndex := 100]
def A318623 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x y : ℤ) ↦ (2 * (x * y)) + x) x x) % (1 + x))

end Sequence

