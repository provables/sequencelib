/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158056 sequence 
-/


namespace Sequence

@[OEIS := A158056, offset := 1, derive := true, maxIndex := 100]
def A158056 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + x) * (((1 + x) * loop (λ (x _y : ℤ) ↦ x * x) 2 2) + 2))

end Sequence

