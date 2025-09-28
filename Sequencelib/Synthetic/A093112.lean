/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093112 sequence 
-/


namespace Sequence

@[OEIS := A093112, offset := 1, derive := true, maxIndex := 100]
def A093112 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x _y : ℤ) ↦ x * x) 1 (1 - loop (λ (x _y : ℤ) ↦ x + x) x 2) - 2)

end Sequence

