/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047677 sequence
-/

namespace Sequence

@[OEIS := A047677, offset := 0, maxIndex := 16, derive := true]
def A047677 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + y) * (x * y)) x 2

end Sequence