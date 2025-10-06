/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A264929 sequence
-/

namespace Sequence

@[OEIS := A264929, offset := 0, maxIndex := 2, derive := true]
def A264929 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) x 2) x 3

end Sequence