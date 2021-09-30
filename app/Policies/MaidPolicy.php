<?php

namespace App\Policies;

use App\Models\Maid;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class MaidPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->hasPermissionTo('view maids');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Maid  $maid
     * @return mixed
     */
    public function view(User $user, Maid $maid)
    {
        return $user->hasPermissionTo('view maids');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->hasPermissionTo('create maids');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Maid  $maid
     * @return mixed
     */
    public function update(User $user, Maid $maid)
    {
        return $user->hasPermissionTo('edit maids');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Maid  $maid
     * @return mixed
     */
    public function delete(User $user, Maid $maid)
    {
        return $user->hasPermissionTo('delete maids');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Maid  $maid
     * @return mixed
     */
    public function restore(User $user, Maid $maid)
    {
        return $user->hasPermissionTo('restore maids');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Maid  $maid
     * @return mixed
     */
    public function forceDelete(User $user, Maid $maid)
    {
        return $user->hasPermissionTo('force delete maids');
    }
}
