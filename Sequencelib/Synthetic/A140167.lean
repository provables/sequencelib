/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140167 sequence 
-/


namespace Sequence

@[OEIS := A140167, offset := 1, derive := true, maxIndex := 100]
def A140167 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 - loop2 (λ (x y : ℤ) ↦ (3 * y) - x) (λ (x _y : ℤ) ↦ x) x 1 0) - 1)

end Sequence

