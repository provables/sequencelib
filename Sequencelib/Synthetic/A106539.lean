/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106539 sequence 
-/


namespace Sequence

@[OEIS := A106539, offset := 1, derive := true, maxIndex := 50]
def A106539 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (_x y : ℤ) ↦ x + (x - loop (λ (x y : ℤ) ↦ x * y) y 1)) (x - 1) 1

end Sequence

