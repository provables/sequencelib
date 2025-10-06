/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246292 sequence
-/

namespace Sequence

@[OEIS := A246292, offset := 0, maxIndex := 29, derive := true]
def A246292 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) (loop (λ (x y) ↦ x + y) x 0) 1 / loop (λ (x y) ↦ x * y) x 1

end Sequence