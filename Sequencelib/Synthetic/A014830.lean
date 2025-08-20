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
# A014830 sequence 
-/


namespace Sequence

@[OEIS := A014830, offset := 1, derive := true, maxIndex := 100]
def A014830 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + (((2 * ((x + x) + x)) + x) + y)) x 1

end Sequence

