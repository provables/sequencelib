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
# A166027 sequence 
-/


namespace Sequence

@[OEIS := A166027, offset := 1, derive := true, maxIndex := 29]
def A166027 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ 2 * (x * 3)) x 4 1

end Sequence

