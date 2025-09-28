/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164016 sequence 
-/


namespace Sequence

@[OEIS := A164016, offset := 0, derive := true, maxIndex := 100]
def A164016 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ y * (3 * (1 + x))) (λ (_x _y : ℤ) ↦ 2) 2 x x

end Sequence

