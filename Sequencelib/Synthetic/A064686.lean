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
# A064686 sequence 
-/


namespace Sequence

@[OEIS := A064686, offset := 1, derive := true, maxIndex := 26]
def A064686 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ ((x + x) + x) + y) (λ (_x y : ℤ) ↦ y + y) x 1 1 / 2)

end Sequence

