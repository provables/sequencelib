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
# A291338 sequence 
-/


namespace Sequence

@[OEIS := A291338, offset := 1, derive := true, maxIndex := 21]
def A291338 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (loop (λ (x y : ℤ) ↦ x + y) x x / 3) 2

end Sequence

