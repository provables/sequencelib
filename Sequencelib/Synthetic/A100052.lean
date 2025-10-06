/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100052 sequence
-/

namespace Sequence

@[OEIS := A100052, offset := 0, maxIndex := 59, derive := true]
def A100052 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) (x - 1) (1 + (x + x)) 2

end Sequence