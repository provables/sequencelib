/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186388 sequence 
-/


namespace Sequence

@[OEIS := A186388, offset := 1, derive := true, maxIndex := 93]
def A186388 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ ((2 + y) / 3) + x) x 2 / 2) + x)

end Sequence

