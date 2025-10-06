/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141742 sequence
-/

namespace Sequence

@[OEIS := A141742, offset := 0, maxIndex := 13, derive := true]
def A141742 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (x % y) + y) (1 + x) 0 + 2) + x

end Sequence