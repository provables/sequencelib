/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247840 sequence 
-/


namespace Sequence

@[OEIS := A247840, offset := 1, derive := true, maxIndex := 100]
def A247840 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (1 + y) * (2 + x)) 2 x) x 0 * 2)

end Sequence

