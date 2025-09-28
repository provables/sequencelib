/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216491 sequence 
-/


namespace Sequence

@[OEIS := A216491, offset := 0, derive := true, maxIndex := 23]
def A216491 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 * loop (λ (x _y : ℤ) ↦ (2 * (x + x)) + x) x 3))

end Sequence

