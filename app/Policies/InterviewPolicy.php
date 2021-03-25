<?php

namespace App\Policies;

use App\Models\Interview;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class InterviewPolicy
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
        return $user->hasPermissionTo('view interview');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Interview  $interview
     * @return mixed
     */
    public function view(User $user, Interview $interview)
    {
        if($user->hasPermissionTo('view interview')){
            if(!$user->hasAnyRole(['Super Admin', 'Admin'])){
                return $interview->user_id == $user->id;
            } else {
                return true;
            }
        }
        return true;
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        // return true;
        return $user->hasPermissionTo('create interview');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Interview  $interview
     * @return mixed
     */
    public function update(User $user, Interview $interview)
    {
        // return true;
        if($user->hasPermissionTo('edit interview')){
            if(!$user->hasAnyRole(['Super Admin', 'Admin'])){
                return $interview->user_id == $user->id;
            } else {
                return true;
            }
        }

    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Interview  $interview
     * @return mixed
     */
    public function delete(User $user, Interview $interview)
    {
        return $user->hasPermissionTo('delete interview');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Interview  $interview
     * @return mixed
     */
    public function restore(User $user, Interview $interview)
    {
        return $user->hasPermissionTo('restore interview');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Interview  $interview
     * @return mixed
     */
    public function forceDelete(User $user, Interview $interview)
    {
        return $user->hasPermissionTo('force delete interview');
    }
}
