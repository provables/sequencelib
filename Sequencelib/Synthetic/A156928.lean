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
# A156928 sequence 
-/


namespace Sequence

@[OEIS := A156928, offset := 2, derive := true, maxIndex := 50]
def A156928 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (y * y) + x) (1 + y) x + x) x 1

end Sequence

