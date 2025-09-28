/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188148 sequence 
-/


namespace Sequence

@[OEIS := A188148, offset := 1, derive := true, maxIndex := 100]
def A188148 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (_x y : ℤ) ↦ 3 * (y * y)) x 1 * 2) - 2) * 2)

end Sequence

