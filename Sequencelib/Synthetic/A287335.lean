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
# A287335 sequence 
-/


namespace Sequence

@[OEIS := A287335, offset := 1, derive := true, maxIndex := 100]
def A287335 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((y * y) + x) + y) ((1 + (x + x)) + x) x

end Sequence

