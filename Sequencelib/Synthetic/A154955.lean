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
# A154955 sequence 
-/


namespace Sequence

@[OEIS := A154955, offset := 1, derive := true, maxIndex := 100]
def A154955 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 - loop2 (λ (_x y : ℤ) ↦ y) (λ (_x _y : ℤ) ↦ 1) x 0 2)

end Sequence

