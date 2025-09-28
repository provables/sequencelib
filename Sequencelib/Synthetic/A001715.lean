/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001715 sequence 
-/


namespace Sequence

@[OEIS := A001715, offset := 3, derive := true, maxIndex := 21]
def A001715 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 + y) * x) + x) x 1

end Sequence

