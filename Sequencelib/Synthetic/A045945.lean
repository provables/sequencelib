/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A045945 sequence
-/

namespace Sequence

@[OEIS := A045945, offset := 0, maxIndex := 100, derive := true]
def A045945 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x y) ↦ x + y) ((x + x) + x) 0

end Sequence