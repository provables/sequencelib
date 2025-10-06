/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013905 sequence
-/

namespace Sequence

@[OEIS := A013905, offset := 0, maxIndex := 7, derive := true]
def A013905 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x y) ↦ x * y) 4 x - x) - x) ((2 * (2 + (x + x))) + x) 1

end Sequence