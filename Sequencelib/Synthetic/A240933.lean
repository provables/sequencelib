/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A240933 sequence
-/

namespace Sequence

@[OEIS := A240933, offset := 0, maxIndex := 22, derive := true]
def A240933 (x : ℕ) : ℕ :=
  Int.toNat <| (x - 1) * loop (λ (x _y) ↦ (x * x) * x) 2 x

end Sequence