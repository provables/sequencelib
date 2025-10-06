/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069908 sequence
-/

namespace Sequence

@[OEIS := A069908, offset := 1, maxIndex := 100, derive := true]
def A069908 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((x / 2) / 2) % 2) - x % 4) + 2) + x) + x

end Sequence