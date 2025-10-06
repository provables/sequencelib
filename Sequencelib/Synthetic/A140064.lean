/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140064 sequence
-/

namespace Sequence

@[OEIS := A140064, offset := 0, maxIndex := 100, derive := true]
def A140064 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x - 1) + y) ((x + x) + x) 1 - x

end Sequence