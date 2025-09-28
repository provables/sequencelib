/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196412 sequence 
-/


namespace Sequence

@[OEIS := A196412, offset := 0, derive := true, maxIndex := 100]
def A196412 (x : ℕ) : ℤ :=
  (loop (λ (x y : ℤ) ↦ x * y) x 1 - loop (λ (x _y : ℤ) ↦ x * x) 2 x * x)

end Sequence

