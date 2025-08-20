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
# A195320 sequence 
-/


namespace Sequence

@[OEIS := A195320, offset := 0, derive := true, maxIndex := 100]
def A195320 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((x * 2) * y) - x) (λ (_x _y : ℤ) ↦ 4) 2 x x

end Sequence

