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
# A163227 sequence 
-/


namespace Sequence

@[OEIS := A163227, offset := 1, derive := true, maxIndex := 100]
def A163227 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (x % (y + y)) + y) (λ (x _y : ℤ) ↦ x) x 1 1 - x % 2)

end Sequence

