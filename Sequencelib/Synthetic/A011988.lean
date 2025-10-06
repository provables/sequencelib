/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011988 sequence
-/

namespace Sequence

@[OEIS := A011988, offset := 7, maxIndex := 10, derive := true]
def A011988 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| (1 + ((x % 2) + x)) * (1 + x)

end Sequence