/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A240438 sequence
-/

namespace Sequence

@[OEIS := A240438, offset := 1, maxIndex := 100, derive := true]
def A240438 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x * x) + (x + x) / 3

end Sequence