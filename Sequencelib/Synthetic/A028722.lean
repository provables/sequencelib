/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028722 sequence 
-/


namespace Sequence

@[OEIS := A028722, offset := 0, derive := true, maxIndex := 9]
def A028722 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x - 1) + y) ((x - ((x / 2) % 2)) / 2) x

end Sequence

