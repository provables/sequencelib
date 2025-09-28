/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176447 sequence 
-/


namespace Sequence

@[OEIS := A176447, offset := 0, derive := true, maxIndex := 50]
def A176447 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ y - x) x y) x 0

end Sequence

