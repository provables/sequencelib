/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A061316 sequence
-/

namespace Sequence

@[OEIS := A061316, offset := 0, maxIndex := 100, derive := true]
def A061316 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x / y) + y) * x) 2 x / 2

end Sequence