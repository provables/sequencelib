/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260955 sequence
-/

namespace Sequence

@[OEIS := A260955, offset := 0, maxIndex := 100, derive := true]
def A260955 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y) ↦ x * x) 1 (1 + (x + x))) * 3

end Sequence