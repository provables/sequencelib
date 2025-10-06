/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190705 sequence
-/

namespace Sequence

@[OEIS := A190705, offset := 0, maxIndex := 30, derive := true]
def A190705 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((2 + y) * x) + y) 2 x * x) * x

end Sequence