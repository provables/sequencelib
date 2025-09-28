/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026035 sequence 
-/


namespace Sequence

@[OEIS := A026035, offset := 2, derive := true, maxIndex := 45]
def A026035 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (1 + y) x) x 2 + x / 2)

end Sequence

