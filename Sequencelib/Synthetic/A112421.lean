/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112421 sequence 
-/


namespace Sequence

@[OEIS := A112421, offset := 7, derive := true, maxIndex := 100]
def A112421 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| ((2 * loop (λ (x y : ℤ) ↦ ((y / 2) / 3) + x) x x) + 2)

end Sequence

