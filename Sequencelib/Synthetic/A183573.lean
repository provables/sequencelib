/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183573 sequence 
-/


namespace Sequence

@[OEIS := A183573, offset := 1, derive := true, maxIndex := 100]
def A183573 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (y / ((x * x) / 2)) + x) (1 + x) 2 + x)

end Sequence

