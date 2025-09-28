/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059826 sequence 
-/


namespace Sequence

@[OEIS := A059826, offset := 0, derive := true, maxIndex := 50]
def A059826 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (y + x) + y) (x * x) 1

end Sequence

