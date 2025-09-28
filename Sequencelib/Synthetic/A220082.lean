/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220082 sequence 
-/


namespace Sequence

@[OEIS := A220082, offset := 1, derive := true, maxIndex := 100]
def A220082 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((((y - 1) % 2) + 2) * (y + y)) + x) x 1

end Sequence

