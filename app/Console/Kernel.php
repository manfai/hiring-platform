<?php

namespace App\Console;

use App\Models\Interview;
use App\Models\User;
use App\Notifications\InterviewRemind;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')->hourly();
        $schedule->call(function () {
            $date = date('Y-m-d');
            $usersInterview = Interview::whereDate('started_at',$date)->get();
            foreach ($usersInterview as $key => $interview) {
                $user = User::find($interview->user_id);
                $user->notify(new InterviewRemind($user,$date));
            }
        })->everyMinute();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
