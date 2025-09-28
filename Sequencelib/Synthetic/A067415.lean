/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067415 sequence 
-/


namespace Sequence

@[OEIS := A067415, offset := 0, derive := true, maxIndex := 16]
def A067415 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 + y) * (x * (2 + y))) (λ (_x _y : ℤ) ↦ 2) x 1 1

end Sequence

