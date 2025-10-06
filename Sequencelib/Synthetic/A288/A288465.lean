/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A288465 sequence
-/

namespace Sequence

@[OEIS := A288465, offset := 0, maxIndex := 100, derive := true]
def A288465 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((((y * y) - y) / x) + x) + y) (λ (x _y) ↦ x) x 1 1 * 2

end Sequence