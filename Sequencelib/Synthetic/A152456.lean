/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152456 sequence
-/

namespace Sequence

@[OEIS := A152456, offset := 0, maxIndex := 18, derive := true]
def A152456 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x * y) x ((x - 3) + x * x)

end Sequence