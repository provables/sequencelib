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
# A106386 sequence 
-/


namespace Sequence

@[OEIS := A106386, offset := 1, derive := true, maxIndex := 5]
def A106386 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ x - y) (x / 2) x + x) + x) x 1

end Sequence

