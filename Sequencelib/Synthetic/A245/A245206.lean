/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245206 sequence
-/

namespace Sequence

@[OEIS := A245206, offset := 1, maxIndex := 1, derive := true]
def A245206 (_n : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x * x) + y) * x) 2 2 - 1

end Sequence
