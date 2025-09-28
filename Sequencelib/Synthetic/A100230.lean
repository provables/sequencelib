/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100230 sequence 
-/


namespace Sequence

@[OEIS := A100230, offset := 0, derive := true, maxIndex := 25]
def A100230 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (3 * (1 + y)) + x) x 1 2

end Sequence

