/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340745 sequence 
-/


namespace Sequence

@[OEIS := A340745, offset := 1, derive := true, maxIndex := 67]
def A340745 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x / 3) x y + x) x 0 + x)

end Sequence

