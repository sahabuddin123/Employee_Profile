<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;


class ProcessView implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $viewable;
    public $visitor;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($viewable)
    {
        $this->viewable = $viewable;
        $this->visitor = (new VisitorCookieRepository)->get();
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        views($this->viewable)->overrideVisitor($this->visitor)->record();
    }
}
