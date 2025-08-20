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
# A066979 sequence 
-/


namespace Sequence

@[OEIS := A066979, offset := 1, derive := true, maxIndex := 100]
def A066979 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x * y) + x) x 1 / loop (λ (x _y : ℤ) ↦ x + x) x 2)

end Sequence

