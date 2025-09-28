/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290768 sequence 
-/


namespace Sequence

@[OEIS := A290768, offset := 1, derive := true, maxIndex := 50]
def A290768 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (3 * loop (λ (x y : ℤ) ↦ x + y) x 1)

end Sequence

