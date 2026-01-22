/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000330 sequence
-/

namespace Sequence

@[OEIS := A000330, offset := 0, maxIndex := 100, derive := true]

def A000330 (n : ℕ) : ℕ := (n * (n + 1) * (2 * n + 1)) / 6


end Sequence