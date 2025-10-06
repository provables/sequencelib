/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085787 sequence
-/

namespace Sequence

@[OEIS := A085787, offset := 0, maxIndex := 100, derive := true]
def A085787 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) (x / 2) (loop (λ (x y) ↦ x + y) x 0)

end Sequence