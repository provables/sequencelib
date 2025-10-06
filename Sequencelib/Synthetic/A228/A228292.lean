/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228292 sequence
-/

namespace Sequence

@[OEIS := A228292, offset := 0, maxIndex := 100, derive := true]
def A228292 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x * y)) (λ (_x y) ↦ y) ((3 * 2) + 1) 1 x * x

end Sequence