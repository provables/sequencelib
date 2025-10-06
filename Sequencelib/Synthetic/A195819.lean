/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195819 sequence
-/

namespace Sequence

@[OEIS := A195819, offset := 0, maxIndex := 46, derive := true]
def A195819 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + y)) * x) 2 x - x

end Sequence