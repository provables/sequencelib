/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143462 sequence
-/

namespace Sequence

@[OEIS := A143462, offset := 0, maxIndex := 29, derive := true]
def A143462 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x - y) (λ (x y) ↦ x + y) ((x + x) + x) 1 1

end Sequence