/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156986 sequence
-/

namespace Sequence

@[OEIS := A156986, offset := 0, maxIndex := 7, derive := true]
def A156986 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 / x) x 1) 2 x

end Sequence