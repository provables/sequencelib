/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006043 sequence
-/

namespace Sequence

@[OEIS := A006043, offset := 0, maxIndex := 100, derive := true]
def A006043 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + x) * loop (λ (x _y) ↦ (x + x) + x) x (2 + x)

end Sequence