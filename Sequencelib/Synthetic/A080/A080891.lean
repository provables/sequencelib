/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080891 sequence
-/

namespace Sequence

@[OEIS := A080891, offset := 0, maxIndex := 100, derive := true]
def A080891 (x : ℕ) : ℤ :=
  1 / loop2 (λ (x y) ↦ comprN (λ (x : ℤ) ↦ 0) x - y) (λ (x _y) ↦ x) x 2 1

end Sequence