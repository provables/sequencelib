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
# A151798 sequence 
-/


namespace Sequence

@[OEIS := A151798, offset := 0, derive := true, maxIndex := 100]
def A151798 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (_x _y : ℤ) ↦ 2) x 1 0

end Sequence

