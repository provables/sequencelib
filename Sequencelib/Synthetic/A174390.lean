/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174390 sequence 
-/


namespace Sequence

@[OEIS := A174390, offset := 0, derive := true, maxIndex := 50]
def A174390 (x : ℕ) : ℤ :=
  (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ y - x) x (1 + y)) (1 + x) 1 + 1)

end Sequence

