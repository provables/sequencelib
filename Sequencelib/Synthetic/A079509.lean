/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079509 sequence
-/

namespace Sequence

@[OEIS := A079509, offset := 0, maxIndex := 18, derive := true]
def A079509 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x + y) x x

end Sequence