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
# A337985 sequence 
-/


namespace Sequence

@[OEIS := A337985, offset := 1, derive := true, maxIndex := 87]
def A337985 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ x + x) x 2 1 % ((x % 3) + 2))

end Sequence

