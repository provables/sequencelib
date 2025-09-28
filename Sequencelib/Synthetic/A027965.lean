/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027965 sequence 
-/


namespace Sequence

@[OEIS := A027965, offset := 2, derive := true, maxIndex := 50]
def A027965 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 2 + (x + y)) y 1 + x) x 1 + 2)

end Sequence

