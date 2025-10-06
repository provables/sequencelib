/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115634 sequence
-/

namespace Sequence

@[OEIS := A115634, offset := 0, maxIndex := 100, derive := true]
def A115634 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y - 2) (λ (_x y) ↦ 1 - y) x 1 2

end Sequence