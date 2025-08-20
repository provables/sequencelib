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
# A204171 sequence 
-/


namespace Sequence

@[OEIS := A204171, offset := 1, derive := true, maxIndex := 99]
def A204171 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (y / (2 * (x * x))) + x) x 1 + x) % 2)

end Sequence

