/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A207836 sequence 
-/


namespace Sequence

@[OEIS := A207836, offset := 2, derive := true, maxIndex := 100]
def A207836 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (2 * (y + y)) - x) x 0 (2 + x)

end Sequence

