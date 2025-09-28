/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094055 sequence 
-/


namespace Sequence

@[OEIS := A094055, offset := 1, derive := true, maxIndex := 8]
def A094055 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 2 + (2 * ((x + x) / 3))) x 1 - x)

end Sequence

