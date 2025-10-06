/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017593 sequence
-/

namespace Sequence

@[OEIS := A017593, offset := 0, maxIndex := 53, derive := true]
def A017593 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 + y) * x) + y) 2 x

end Sequence