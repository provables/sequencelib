/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154105 sequence
-/

namespace Sequence

@[OEIS := A154105, offset := 0, maxIndex := 42, derive := true]
def A154105 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((1 + x) * loop (λ (x y) ↦ ((2 + y) * x) + y) 2 x)

end Sequence