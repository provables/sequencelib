/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037270 sequence 
-/


namespace Sequence

@[OEIS := A037270, offset := 0, derive := true, maxIndex := 50]
def A037270 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ x + y) (x * x) 0

end Sequence

