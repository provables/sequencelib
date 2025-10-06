/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213502 sequence
-/

namespace Sequence

@[OEIS := A213502, offset := 0, maxIndex := 38, derive := true]
def A213502 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 + x) * (x * x)) - x / 2) + x

end Sequence