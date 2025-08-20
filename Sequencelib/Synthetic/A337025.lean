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
# A337025 sequence 
-/


namespace Sequence

@[OEIS := A337025, offset := 0, derive := true, maxIndex := 12]
def A337025 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 * ((2 * y) * x)) (λ (_x y : ℤ) ↦ y) (2 * x) 1 x

end Sequence

