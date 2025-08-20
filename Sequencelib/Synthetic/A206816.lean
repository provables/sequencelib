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
# A206816 sequence 
-/


namespace Sequence

@[OEIS := A206816, offset := 2, derive := true, maxIndex := 50]
def A206816 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ x * y) y y * y) + x) (1 + x) 0

end Sequence

