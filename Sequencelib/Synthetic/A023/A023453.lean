/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023453 sequence
-/

namespace Sequence

@[OEIS := A023453, offset := 0, maxIndex := 60, derive := true]
def A023453 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x - y) 4 x - 1

end Sequence