/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A238377 sequence
-/

namespace Sequence

@[OEIS := A238377, offset := 0, maxIndex := 39, derive := true]
def A238377 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ y - x) y 1 + x) + y) x 1

end Sequence