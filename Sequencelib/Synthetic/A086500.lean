/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086500 sequence 
-/


namespace Sequence

@[OEIS := A086500, offset := 1, derive := true, maxIndex := 41]
def A086500 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + ((x % 2) + x)) * (1 + loop (λ (x y : ℤ) ↦ x + y) x x))

end Sequence

