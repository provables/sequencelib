/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017298 sequence
-/

namespace Sequence

@[OEIS := A017298, offset := 0, maxIndex := 100, derive := true]
def A017298 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * y) * y) (λ (x y) ↦ y * x) 2 (1 + (((x + x) * 2) + x)) 2

end Sequence