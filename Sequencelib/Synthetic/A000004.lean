/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A000004 sequence
-/


namespace Sequence

@[OEIS := A000004, offset := 0, derive := true, maxIndex := 100]
def A000004 (_x : ℕ) : ℕ := 0

end Sequence
