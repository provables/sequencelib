/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070496 sequence 
-/


namespace Sequence

@[OEIS := A070496, offset := 0, derive := true, maxIndex := 100]
def A070496 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) * x) % (2 + (2 * loop (λ (x _y : ℤ) ↦ x * x) 2 2)))

end Sequence

