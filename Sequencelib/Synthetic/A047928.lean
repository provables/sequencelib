/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047928 sequence 
-/


namespace Sequence

@[OEIS := A047928, offset := 2, derive := true, maxIndex := 33]
def A047928 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 / y) + x) * x) 2 x

end Sequence

