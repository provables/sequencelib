/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047657 sequence
-/

namespace Sequence

@[OEIS := A047657, offset := 0, maxIndex := 100, derive := true]
def A047657 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((y - 1) * 2) + y) * (x + x)) x 1

end Sequence