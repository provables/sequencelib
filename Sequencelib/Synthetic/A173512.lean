/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173512 sequence
-/

namespace Sequence

@[OEIS := A173512, offset := 0, maxIndex := 54, derive := true]
def A173512 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 + (2 * (x + x)))) + x % 2

end Sequence