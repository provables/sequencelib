/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017528 sequence 
-/


namespace Sequence

@[OEIS := A017528, offset := 0, derive := true, maxIndex := 12]
def A017528 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 3 (loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x)

end Sequence

