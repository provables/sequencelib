/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124657 sequence 
-/


namespace Sequence

@[OEIS := A124657, offset := 1, derive := true, maxIndex := 19]
def A124657 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (2 + y) * x) (2 + x) 2

end Sequence

