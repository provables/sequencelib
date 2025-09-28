/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057089 sequence 
-/


namespace Sequence

@[OEIS := A057089, offset := 0, derive := true, maxIndex := 100]
def A057089 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 * (3 * (x + y))) (λ (x _y : ℤ) ↦ x) x 1 0

end Sequence

