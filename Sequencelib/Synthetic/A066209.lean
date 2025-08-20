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
# A066209 sequence 
-/


namespace Sequence

@[OEIS := A066209, offset := 1, derive := true, maxIndex := 79]
def A066209 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 2 * ((2 * (x + x)) + x)) x x % (1 + x))

end Sequence

