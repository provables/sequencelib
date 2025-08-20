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
# A075869 sequence 
-/


namespace Sequence

@[OEIS := A075869, offset := 1, derive := true, maxIndex := 16]
def A075869 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) + y) (λ (x _y : ℤ) ↦ x) (x + x) 3 0

end Sequence

