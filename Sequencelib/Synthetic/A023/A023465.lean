/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023465 sequence
-/

namespace Sequence

@[OEIS := A023465, offset := 0, maxIndex := 60, derive := true]
def A023465 (x : ℕ) : ℤ :=
  1 + (x - loop (λ (x y) ↦ (2 + y) * x) 2 2)

end Sequence