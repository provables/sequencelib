/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216517 sequence 
-/


namespace Sequence

@[OEIS := A216517, offset := 1, derive := true, maxIndex := 4]
def A216517 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop (λ (x _y : ℤ) ↦ (2 * ((x + x) + x)) + x) x 3)

end Sequence

