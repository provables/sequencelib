/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350362 sequence
-/

namespace Sequence

@[OEIS := A350362, offset := 3, maxIndex := 60, derive := true]
def A350362 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((2 * (2 * ((2 * (2 + x)) / 3))) + x) / (1 + x)) + 2

end Sequence