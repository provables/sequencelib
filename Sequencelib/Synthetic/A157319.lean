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
# A157319 sequence 
-/


namespace Sequence

@[OEIS := A157319, offset := 1, derive := true, maxIndex := 50]
def A157319 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (2 * (3 * (x % 3))) - x) x

end Sequence

