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
# A220443 sequence 
-/


namespace Sequence

@[OEIS := A220443, offset := 0, derive := true, maxIndex := 41]
def A220443 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 y * y) + x) x 0

end Sequence

