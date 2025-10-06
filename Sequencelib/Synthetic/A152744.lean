/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152744 sequence
-/

namespace Sequence

@[OEIS := A152744, offset := 0, maxIndex := 100, derive := true]
def A152744 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) - loop (λ (x y) ↦ x - y) x x) * (1 + (2 + 4))

end Sequence