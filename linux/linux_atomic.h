/* linux support four variants:
 *
 * - Fully ordered: The default implementation, no suffix required.
 * - Acquire: Provides ACQUIRE semantics, _acquire suffix.
 * - Release: Provides RELEASE semantics, _release suffix.
 * - Relaxed: No ordering guarantees, _relaxed suffix.

 * For compound atomics performing both a load and a store, 
 * ACQUIRE semantics apply only to the load and 
 * RELEASE semantics only to the store portion of the operation.
 */

