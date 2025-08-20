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
# A175986 sequence 
-/


namespace Sequence

@[OEIS := A175986, offset := 1, derive := true, maxIndex := 6]
def A175986 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) y 1 x - 2) x 0 + 1)

end Sequence

