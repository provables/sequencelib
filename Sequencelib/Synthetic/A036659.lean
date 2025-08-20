/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A036659 sequence 
-/


namespace Sequence

@[OEIS := A036659, offset := 1, derive := true, maxIndex := 100]
def A036659 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + x) * loop (λ (x y : ℤ) ↦ 2 + ((y * 3) + x)) x 2)

end Sequence

