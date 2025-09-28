/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128615 sequence 
-/


namespace Sequence

@[OEIS := A128615, offset := 0, derive := true, maxIndex := 100]
def A128615 (x : ℕ) : ℤ :=
  (loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x y : ℤ) ↦ (-x) - y) x 1 x / 3)

end Sequence

