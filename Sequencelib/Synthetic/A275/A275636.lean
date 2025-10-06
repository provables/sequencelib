/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275636 sequence
-/

namespace Sequence

@[OEIS := A275636, offset := 0, maxIndex := 100, derive := true]
def A275636 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ (x + x) + x) y x + x) + x) (λ (_x _y) ↦ 0) x 1 x / 2

end Sequence