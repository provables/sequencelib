/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242771 sequence 
-/


namespace Sequence

@[OEIS := A242771, offset := 1, derive := true, maxIndex := 55]
def A242771 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y / 3) + x) + y / 2) x 1 - 1)

end Sequence

