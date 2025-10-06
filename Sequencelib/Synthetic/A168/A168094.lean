/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168094 sequence
-/

namespace Sequence

@[OEIS := A168094, offset := 0, maxIndex := 89, derive := true]
def A168094 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (x - loop (λ (_x y) ↦ y) ((x - 2) - 2) 1)) + 3

end Sequence