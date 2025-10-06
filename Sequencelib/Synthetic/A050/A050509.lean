/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050509 sequence
-/

namespace Sequence

@[OEIS := A050509, offset := 0, maxIndex := 38, derive := true]
def A050509 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y) ↦ 2 + (x + y)) x (x * x)) * (1 + x)

end Sequence