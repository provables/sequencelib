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
# A186271 sequence 
-/


namespace Sequence

@[OEIS := A186271, offset := 0, derive := true, maxIndex := 15]
def A186271 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (x + y) + y) y 1 1 * x) x 1

end Sequence

