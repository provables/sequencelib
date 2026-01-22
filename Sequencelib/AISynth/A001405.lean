/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001405 sequence
-/

namespace Sequence

@[OEIS := A001405, offset := 0, maxIndex := 100, derive := true]

def A001405 (n : ℕ) : ℕ := Nat.choose n (n / 2)


end Sequence