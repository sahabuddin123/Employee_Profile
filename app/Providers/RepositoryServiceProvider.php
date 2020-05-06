<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Contracts\PersonalinfoContract;
use App\Repositories\PersonalinfoRepository;

use App\Contracts\ProjectContract;
use App\Repositories\ProjectRepository;

class RepositoryServiceProvider extends ServiceProvider
{


    protected $repositories = [
        PersonalinfoContract::class         =>          PersonalinfoRepository::class,
        ProjectContract::class         =>          ProjectRepository::class,
    ];

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        foreach ($this->repositories as $interface => $implementation)
        {
            $this->app->bind($interface, $implementation);
        }
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
