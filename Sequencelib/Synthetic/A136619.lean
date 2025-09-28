/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136619 sequence 
-/


namespace Sequence

@[OEIS := A136619, offset := 1, derive := true, maxIndex := 100]
def A136619 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ y - x) x 2 + 2) (x - 1) 2 - 1)

end Sequence

