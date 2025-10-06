/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140405 sequence
-/

namespace Sequence

@[OEIS := A140405, offset := 0, maxIndex := 19, derive := true]
def A140405 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((3 * (x + x)) / y) + x) * ((2 * 2) + 1)) x 1

end Sequence