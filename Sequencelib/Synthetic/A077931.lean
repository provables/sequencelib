/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077931 sequence
-/

namespace Sequence

@[OEIS := A077931, offset := 0, maxIndex := 34, derive := true]
def A077931 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 1 - ((((y - x) % 2) + x) + x)) x 1

end Sequence