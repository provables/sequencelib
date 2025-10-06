/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034494 sequence
-/

namespace Sequence

@[OEIS := A034494, offset := 0, maxIndex := 19, derive := true]
def A034494 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (3 * ((x - 1) + x)) + x) x 1

end Sequence