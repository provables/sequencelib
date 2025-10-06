/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A202304 sequence
-/

namespace Sequence

@[OEIS := A202304, offset := 0, maxIndex := 100, derive := true]
def A202304 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((x * x) + x) + y) / (1 + (x + x))) ((x + x) + x) 0

end Sequence