/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123348 sequence 
-/


namespace Sequence

@[OEIS := A123348, offset := 0, derive := true, maxIndex := 27]
def A123348 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ 2 * ((x + y) + y)) x 0 3

end Sequence

