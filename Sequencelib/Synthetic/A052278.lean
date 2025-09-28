/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052278 sequence 
-/


namespace Sequence

@[OEIS := A052278, offset := 0, derive := true, maxIndex := 11]
def A052278 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 * (x * y)) + x) * y) ((x * 2) + 1) 2

end Sequence

