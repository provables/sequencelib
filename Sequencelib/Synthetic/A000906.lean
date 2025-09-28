/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000906 sequence 
-/


namespace Sequence

@[OEIS := A000906, offset := 0, derive := true, maxIndex := 100]
def A000906 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x y : ℤ) ↦ (2 * ((y * x) + x)) + x) x (1 + x))

end Sequence

