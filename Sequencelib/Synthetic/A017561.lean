/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017561 sequence
-/

namespace Sequence

@[OEIS := A017561, offset := 0, maxIndex := 16, derive := true]
def A017561 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 2 (3 * (1 + (2 * (x + x)))) 1

end Sequence