/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186353 sequence 
-/


namespace Sequence

@[OEIS := A186353, offset := 1, derive := true, maxIndex := 89]
def A186353 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) (2 + x) x / 2)

end Sequence

