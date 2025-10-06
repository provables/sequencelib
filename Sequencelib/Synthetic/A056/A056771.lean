/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056771 sequence
-/

namespace Sequence

@[OEIS := A056771, offset := 0, maxIndex := 50, derive := true]
def A056771 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y - x) - x) (λ (x _y) ↦ x) (2 * (x + x)) 1 1

end Sequence