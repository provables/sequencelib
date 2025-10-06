/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011986 sequence
-/

namespace Sequence

@[OEIS := A011986, offset := 8, maxIndex := 12, derive := true]
def A011986 (n : ℕ) : ℕ :=
  let x := n - 8
  Int.toNat <| (x + x) + (x - (2 / ((x * x) - 2)))

end Sequence