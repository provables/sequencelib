/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160378 sequence 
-/


namespace Sequence

@[OEIS := A160378, offset := 0, derive := true, maxIndex := 100]
def A160378 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ x - y) x ((x * x) * x)

end Sequence

