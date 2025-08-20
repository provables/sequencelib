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
# A097321 sequence 
-/


namespace Sequence

@[OEIS := A097321, offset := 1, derive := true, maxIndex := 100]
def A097321 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ ((x * x) * x) - x) 1 (3 * (1 + x))

end Sequence

