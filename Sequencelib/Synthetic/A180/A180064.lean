/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180064 sequence
-/

namespace Sequence

@[OEIS := A180064, offset := 0, maxIndex := 25, derive := true]
def A180064 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * y) * y) (x / 2) 1

end Sequence