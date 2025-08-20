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
# A329670 sequence 
-/


namespace Sequence

@[OEIS := A329670, offset := 0, derive := true, maxIndex := 97]
def A329670 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 / loop (λ (_x y : ℤ) ↦ y) (x - 1) 2) % 2)

end Sequence

