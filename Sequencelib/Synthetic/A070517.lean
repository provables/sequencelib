/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070517 sequence 
-/


namespace Sequence

@[OEIS := A070517, offset := 0, derive := true, maxIndex := 100]
def A070517 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x * x) 2 x % (1 + (2 * (2 + 4))))

end Sequence

