/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179442 sequence 
-/


namespace Sequence

@[OEIS := A179442, offset := 1, derive := true, maxIndex := 15]
def A179442 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x * y) * y) x (2 + x)

end Sequence

