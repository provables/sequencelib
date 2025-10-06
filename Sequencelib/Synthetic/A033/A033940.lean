/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033940 sequence
-/

namespace Sequence

@[OEIS := A033940, offset := 0, maxIndex := 100, derive := true]
def A033940 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) x 1 % (1 + (2 + 4))

end Sequence