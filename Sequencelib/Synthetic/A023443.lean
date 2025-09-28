/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023443 sequence 
-/


namespace Sequence

@[OEIS := A023443, offset := 0, derive := true, maxIndex := 75]
def A023443 (x : ℕ) : ℤ :=
  (x - 1)

end Sequence

