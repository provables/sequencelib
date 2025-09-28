/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128587 sequence 
-/


namespace Sequence

@[OEIS := A128587, offset := 1, derive := true, maxIndex := 100]
def A128587 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x) x 2 2 - loop (λ (x _y : ℤ) ↦ -x) x 1)

end Sequence

