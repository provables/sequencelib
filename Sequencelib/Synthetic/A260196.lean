/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260196 sequence
-/

namespace Sequence

@[OEIS := A260196, offset := 0, maxIndex := 100, derive := true]
def A260196 (x : ℕ) : ℤ :=
  1 - loop2 (λ (_x y) ↦ 2 + y) (λ (_x _y) ↦ 0) x 0 2

end Sequence