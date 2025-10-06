/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167891 sequence
-/

namespace Sequence

@[OEIS := A167891, offset := 0, maxIndex := 100, derive := true]
def A167891 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ 2 * (2 / y)) x 1

end Sequence