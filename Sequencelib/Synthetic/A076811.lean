/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076811 sequence 
-/


namespace Sequence

@[OEIS := A076811, offset := 0, derive := true, maxIndex := 8]
def A076811 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x + x) (x * x) 1

end Sequence

