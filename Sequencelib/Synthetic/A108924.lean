/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108924 sequence 
-/


namespace Sequence

@[OEIS := A108924, offset := 0, derive := true, maxIndex := 24]
def A108924 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ 2 + (2 * (y + y))) (λ (x y : ℤ) ↦ 2 * (x + y)) x 1 0

end Sequence

