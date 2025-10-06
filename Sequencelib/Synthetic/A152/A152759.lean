/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152759 sequence
-/

namespace Sequence

@[OEIS := A152759, offset := 0, maxIndex := 100, derive := true]
def A152759 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x (((x - 1) * 3) * x) * 3

end Sequence