/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152833 sequence
-/

namespace Sequence

@[OEIS := A152833, offset := 0, maxIndex := 74, derive := true]
def A152833 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ y - x) x ((-3))

end Sequence