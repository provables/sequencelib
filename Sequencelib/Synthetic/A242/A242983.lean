/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242983 sequence
-/

namespace Sequence

@[OEIS := A242983, offset := 0, maxIndex := 33, derive := true]
def A242983 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x - 2) + y) ((x * x) - x) x

end Sequence