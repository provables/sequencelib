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
# A055808 sequence 
-/


namespace Sequence

@[OEIS := A055808, offset := 0, derive := true, maxIndex := 47]
def A055808 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y : ℤ) ↦ y * y) ((x - 2) + x) x

end Sequence

