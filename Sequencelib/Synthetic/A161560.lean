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
# A161560 sequence 
-/


namespace Sequence

@[OEIS := A161560, offset := 1, derive := true, maxIndex := 73]
def A161560 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop2 (λ (x y : ℤ) ↦ x + y) (λ (_x y : ℤ) ↦ y / 2) x 1 x % 2) - 1) + x)

end Sequence

