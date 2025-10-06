/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002379 sequence
-/

namespace Sequence

@[OEIS := A002379, offset := 0, maxIndex := 100, derive := true]
def A002379 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x / 2) x (loop (λ (x _y) ↦ (x + x) + x) x 1)

end Sequence