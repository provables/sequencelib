/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069134 sequence
-/

namespace Sequence

@[OEIS := A069134, offset := 0, maxIndex := 15, derive := true]
def A069134 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (3 * loop (λ (x y) ↦ x * y) x x)

end Sequence