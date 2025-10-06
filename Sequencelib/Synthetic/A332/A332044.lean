/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332044 sequence
-/

namespace Sequence

@[OEIS := A332044, offset := 2, maxIndex := 51, derive := true]
def A332044 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((2 + ((2 + (2 + x)) * x)) + x % 2) * 2

end Sequence