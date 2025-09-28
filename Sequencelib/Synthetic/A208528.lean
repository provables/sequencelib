/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A208528 sequence 
-/


namespace Sequence

@[OEIS := A208528, offset := 2, derive := true, maxIndex := 100]
def A208528 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (2 * (2 * loop (λ (x y : ℤ) ↦ x * y) x x))

end Sequence

