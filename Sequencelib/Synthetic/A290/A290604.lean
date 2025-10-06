/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290604 sequence
-/

namespace Sequence

@[OEIS := A290604, offset := 0, maxIndex := 100, derive := true]
def A290604 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x - 1) + y) (λ (x _y) ↦ 2 * (x + 2)) x 2 1

end Sequence