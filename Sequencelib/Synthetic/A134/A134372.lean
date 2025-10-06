/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134372 sequence
-/

namespace Sequence

@[OEIS := A134372, offset := 0, maxIndex := 10, derive := true]
def A134372 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * y) * y) (x + x) 1

end Sequence