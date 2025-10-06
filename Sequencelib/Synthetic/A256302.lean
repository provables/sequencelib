/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256302 sequence
-/

namespace Sequence

@[OEIS := A256302, offset := 0, maxIndex := 21, derive := true]
def A256302 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + (x % (2 + y))) + y) x 2

end Sequence