/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269792 sequence
-/

namespace Sequence

@[OEIS := A269792, offset := 0, maxIndex := 33, derive := true]
def A269792 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + 4) * loop (λ (x _y) ↦ x * x) 2 x

end Sequence