/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134405 sequence
-/

namespace Sequence

@[OEIS := A134405, offset := 0, maxIndex := 61, derive := true]
def A134405 (x : ℕ) : ℤ :=
  (((loop2 (λ (x y) ↦ y - x) (λ (_x _y) ↦ 1) x (1 + x) 1 + 2) / 2) + x % 4) - 2

end Sequence