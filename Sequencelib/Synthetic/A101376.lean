/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101376 sequence
-/

namespace Sequence

@[OEIS := A101376, offset := 0, maxIndex := 33, derive := true]
def A101376 (x : ℕ) : ℕ :=
  Int.toNat <| ((x - 1) * loop (λ (x y) ↦ x + y) (x * x) x) + x

end Sequence