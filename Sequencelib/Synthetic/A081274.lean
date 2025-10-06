/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081274 sequence
-/

namespace Sequence

@[OEIS := A081274, offset := 0, maxIndex := 17, derive := true]
def A081274 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x + y) ((x + x) + x) 1

end Sequence