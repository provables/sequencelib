/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087946 sequence
-/

namespace Sequence

@[OEIS := A087946, offset := 0, maxIndex := 23, derive := true]
def A087946 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (2 * (y + y)) - x) y 0 1 + x) + x) x 1

end Sequence