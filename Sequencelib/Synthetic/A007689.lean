/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007689 sequence
-/

namespace Sequence

@[OEIS := A007689, offset := 0, maxIndex := 100, derive := true]
def A007689 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x - y) + x) + x) (λ (_x y) ↦ y + y) x 2 1

end Sequence