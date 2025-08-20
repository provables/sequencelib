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
# A145385 sequence 
-/


namespace Sequence

@[OEIS := A145385, offset := 1, derive := true, maxIndex := 4]
def A145385 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ (x * y) + x) (λ (_x y : ℤ) ↦ y) x 1 y + x) x 1

end Sequence

