/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052644 sequence
-/

namespace Sequence

@[OEIS := A052644, offset := 0, maxIndex := 18, derive := true]
def A052644 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (loop (λ (_x y) ↦ 4 + y) x 1)

end Sequence