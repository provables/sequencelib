/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082111 sequence
-/

namespace Sequence

@[OEIS := A082111, offset := 0, maxIndex := 100, derive := true]
def A082111 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * (2 + y)) + x) x 1

end Sequence