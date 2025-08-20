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
# A241765 sequence 
-/


namespace Sequence

@[OEIS := A241765, offset := 0, derive := true, maxIndex := 50]
def A241765 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x y : ℤ) ↦ 2 + (x + y)) y 2 * y) + x) x 0

end Sequence

