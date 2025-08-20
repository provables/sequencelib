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
# A010965 sequence 
-/


namespace Sequence

@[OEIS := A010965, offset := 12, derive := true, maxIndex := 100]
def A010965 (n : ℕ) : ℕ :=
  let x := n - 12
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x / y) + x) x 1

end Sequence

