/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162729 sequence
-/

namespace Sequence

@[OEIS := A162729, offset := 0, maxIndex := 100, derive := true]
def A162729 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) - x) 1 (loop (λ (x _y) ↦ (2 * (x + x)) + x) x 1) / 2

end Sequence