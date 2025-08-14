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

# A337985 sequence 
-/

namespace Sequence

@[OEIS := A337985, offset := 1, derive := true, maxIndex := 87]
def A337985 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (x + x)) (x) (2) (1) % ((x % (1 + 2)) + 2))

end Sequence
