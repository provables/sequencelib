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
# A057738 sequence 
-/


namespace Sequence

@[OEIS := A057738, offset := 1, derive := true, maxIndex := 3]
def A057738 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((x * x) * y) * y) - x) x (1 + x) + 1)

end Sequence

