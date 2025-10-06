/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049601 sequence
-/

namespace Sequence

@[OEIS := A049601, offset := 0, maxIndex := 28, derive := true]
def A049601 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 0 1 - loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 0 1) / 2

end Sequence