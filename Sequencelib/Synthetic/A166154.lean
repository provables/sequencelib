/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166154 sequence 
-/


namespace Sequence

@[OEIS := A166154, offset := 1, derive := true, maxIndex := 100]
def A166154 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + ((1 + (2 + 4)) * loop (λ (x y : ℤ) ↦ x + y) x x))

end Sequence

