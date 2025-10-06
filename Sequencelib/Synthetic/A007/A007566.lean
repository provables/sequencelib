/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007566 sequence
-/

namespace Sequence

@[OEIS := A007566, offset := 0, maxIndex := 19, derive := true]
def A007566 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x + y) * y) + x) (λ (_x y) ↦ 2 + y) x 1 1

end Sequence