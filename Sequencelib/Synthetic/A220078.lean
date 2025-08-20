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
# A220078 sequence 
-/


namespace Sequence

@[OEIS := A220078, offset := 0]
def A220078 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 * (x + x)) + x) (loop (λ (x y : ℤ) ↦ x * y) x 1) 1

end Sequence

