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
# A327999 sequence 
-/


namespace Sequence

@[OEIS := A327999, offset := 0, derive := true, maxIndex := 100]
def A327999 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) y 4 * x) (λ (_x _y : ℤ) ↦ 0) x 1 x

end Sequence

