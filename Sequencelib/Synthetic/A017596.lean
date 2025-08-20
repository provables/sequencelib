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
# A017596 sequence 
-/


namespace Sequence

@[OEIS := A017596, offset := 0, derive := true, maxIndex := 19]
def A017596 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 2 (loop (λ (x y : ℤ) ↦ ((2 + y) * x) + y) 2 x)

end Sequence

