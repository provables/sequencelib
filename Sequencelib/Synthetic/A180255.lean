/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180255 sequence 
-/


namespace Sequence

@[OEIS := A180255, offset := 0, derive := true, maxIndex := 100]
def A180255 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((x * y) * y) + y) x 0

end Sequence

