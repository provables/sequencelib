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
# A317195 sequence 
-/


namespace Sequence

@[OEIS := A317195, offset := 3, derive := true, maxIndex := 6]
def A317195 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ x + y) (2 + x) x + x) - (x / 2) % 2)

end Sequence

