/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001700 sequence
-/

namespace Sequence

@[OEIS := A001700, offset := 0, maxIndex := 50, derive := true]

def A001700 (n : ℕ) : ℕ := (Nat.choose (2 * n + 1) (n + 1))


end Sequence