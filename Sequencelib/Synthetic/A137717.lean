/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137717 sequence
-/

namespace Sequence

@[OEIS := A137717, offset := 0, maxIndex := 29, derive := true]
def A137717 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (-((x + y) * 2))) (λ (x _y) ↦ x + x) x 1 1

end Sequence