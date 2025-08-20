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
# A023376 sequence 
-/


namespace Sequence

@[OEIS := A023376, offset := 1, derive := true, maxIndex := 10]
def A023376 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x + x) x 1) 1 (loop (λ (x _y : ℤ) ↦ (x / 2) + x) x 2)

end Sequence

