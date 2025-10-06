/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007681 sequence
-/

namespace Sequence

@[OEIS := A007681, offset := 0, maxIndex := 100, derive := true]
def A007681 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x + x)) * loop (λ (x y) ↦ x * y) x (1 + (x + x))

end Sequence