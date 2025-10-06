/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022100 sequence
-/

namespace Sequence

@[OEIS := A022100, offset := 0, maxIndex := 36, derive := true]
def A022100 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ x + y) x 1 (2 * 4)

end Sequence