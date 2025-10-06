/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266593 sequence
-/

namespace Sequence

@[OEIS := A266593, offset := 0, maxIndex := 100, derive := true]
def A266593 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x * x) / 2) * loop (λ (x _y) ↦ x * x) 2 2) % (1 + (x + x))) + 1

end Sequence