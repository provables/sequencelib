/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290168 sequence
-/

namespace Sequence

@[OEIS := A290168, offset := 0, maxIndex := 40, derive := true]
def A290168 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) (x / 2) 0 * x

end Sequence