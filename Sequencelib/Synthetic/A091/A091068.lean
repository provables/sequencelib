/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091068 sequence
-/

namespace Sequence

@[OEIS := A091068, offset := 0, maxIndex := 100, derive := true]
def A091068 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x - y) % ((2 * y) - 1)) x x

end Sequence