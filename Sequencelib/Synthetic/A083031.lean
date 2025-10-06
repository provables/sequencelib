/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083031 sequence
-/

namespace Sequence

@[OEIS := A083031, offset := 1, maxIndex := 56, derive := true]
def A083031 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (x + x)) - (x * x) % 3

end Sequence