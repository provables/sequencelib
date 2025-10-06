/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250489 sequence
-/

namespace Sequence

@[OEIS := A250489, offset := 0, maxIndex := 2, derive := true]
def A250489 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 1) 0 1

end Sequence