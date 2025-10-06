/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A349846 sequence
-/

namespace Sequence

@[OEIS := A349846, offset := 0, maxIndex := 26, derive := true]
def A349846 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 2 * (((x / y) + x) + x)) x 1 / ((x - 1) + x)

end Sequence