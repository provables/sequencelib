/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242856 sequence
-/

namespace Sequence

@[OEIS := A242856, offset := 2, maxIndex := 100, derive := true]
def A242856 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((1 + (2 * ((1 + x) * (4 + x)))) * ((x * x) + x)) + 2

end Sequence