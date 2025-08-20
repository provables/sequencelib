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
# A034911 sequence 
-/


namespace Sequence

@[OEIS := A034911, offset := 1, derive := true, maxIndex := 100]
def A034911 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 1 + (2 * (x * y))) 2 y * x) x 1

end Sequence

