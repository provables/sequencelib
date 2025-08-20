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
# A253942 sequence 
-/


namespace Sequence

@[OEIS := A253942, offset := 4, derive := true, maxIndex := 100]
def A253942 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y : ℤ) ↦ (((2 * (x + x)) + x) / y) + x) x 3

end Sequence

