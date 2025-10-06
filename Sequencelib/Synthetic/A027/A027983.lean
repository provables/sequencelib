/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027983 sequence
-/

namespace Sequence

@[OEIS := A027983, offset := 0, maxIndex := 26, derive := true]
def A027983 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (x + x) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 1 2) x 1

end Sequence