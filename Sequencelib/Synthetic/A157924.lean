/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157924 sequence 
-/


namespace Sequence

@[OEIS := A157924, offset := 1, derive := true, maxIndex := 100]
def A157924 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ (2 * (x * x)) - 1) 2 2 * (1 + x)) + x)

end Sequence

