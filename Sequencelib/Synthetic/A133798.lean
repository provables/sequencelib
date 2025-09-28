/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133798 sequence 
-/


namespace Sequence

@[OEIS := A133798, offset := 1, derive := true, maxIndex := 100]
def A133798 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((y % 2) + x) * y) + x) x 0 - x % 2)

end Sequence

