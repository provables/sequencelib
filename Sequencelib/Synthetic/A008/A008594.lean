/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008594 sequence
-/

namespace Sequence

@[OEIS := A008594, offset := 0, maxIndex := 53, derive := true]
def A008594 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + y) * x) 2 x

end Sequence