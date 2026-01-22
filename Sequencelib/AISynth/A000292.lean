/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000292 sequence
-/

namespace Sequence

@[OEIS := A000292, offset := 0, maxIndex := 100, derive := true]

def A000292 (n : ℕ) : ℕ := (n * (n + 1) * (n + 2)) / 6


end Sequence