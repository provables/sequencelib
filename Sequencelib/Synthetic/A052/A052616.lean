/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052616 sequence
-/

namespace Sequence

@[OEIS := A052616, offset := 0, maxIndex := 22, derive := true]
def A052616 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (1 + (2 - (x % 2)))

end Sequence