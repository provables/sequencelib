/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130884 sequence
-/

namespace Sequence

@[OEIS := A130884, offset := 0, maxIndex := 100, derive := true]
def A130884 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (((x + y) + y) * y)) (λ (x _y) ↦ x) 2 x x

end Sequence