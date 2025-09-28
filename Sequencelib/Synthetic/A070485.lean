/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070485 sequence 
-/


namespace Sequence

@[OEIS := A070485, offset := 0, derive := true, maxIndex := 100]
def A070485 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) * x) % (loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 2 - 1))

end Sequence

