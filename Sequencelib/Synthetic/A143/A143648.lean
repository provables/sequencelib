/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143648 sequence
-/

namespace Sequence

@[OEIS := A143648, offset := 0, maxIndex := 20, derive := true]
def A143648 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x y) ↦ 2 * (((x + y) + y) + y)) x 1 2

end Sequence